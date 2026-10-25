require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local SneakAIRun = class("SneakAIRun", NpcActorProxy)

SneakAIRun.SneakAIRunState = {
    Invalid = -1,
    Aware = 0,
    Patrol = 1,
    ReturnToPatrol = 2,
    OnLure = 3,
    OnLureRunToTask = 4,
    CheckLure = 5,
    Discover = 6
}

SneakAIRun.defaultAlias = "SneakAIRun"
SneakAIRun.PatrolPosNum = 0
SneakAIRun.PatrolPos = nil
SneakAIRun.PatrolDir = nil
SneakAIRun.PatrolNext = 1
SneakAIRun.CurState = SneakAIRun.SneakAIRunState.Invalid
SneakAIRun.SoundPos = nil
local Q2017ClientConfig = require("Quest/Client/Q2017ClientConfig")

function SneakAIRun:GetCustomFreeStyleList()
    local tbl = {}
    local n = 1
    local v = 2
    local n2 = 3
    tbl[1] = 0
    tbl[2] = n
    tbl[3] = v
    tbl[4] = n2
    return tbl
end

function SneakAIRun:StartPatrol()
    if self.uActor == nil then
        return
    end

    local npcAlias = self.GetNpcAlias(self)
    print(npcAlias .. "\231\154\132PatrolPosNum \230\152\175" .. self.PatrolPosNum)
    if self.PatrolPosNum == 1 then
        self.Standby(self)
        self.TurnTo(self, M.Euler2DirXZ(self.PatrolDir[1]))
    else
        if 1 < self.PatrolPosNum then
            self.PatrolNext = self.PatrolNext + 1
            if self.PatrolNext > self.PatrolPosNum then
                self.Standby(self)
                self.TurnTo(self, M.Euler2DirXZ(self.PatrolDir[self.PatrolPosNum]))
            else
                self.RunToTask(self, self.PatrolPos[self.PatrolNext], self.Behave, nil, nil, function()
                    self:SyncPos(2)
                end)

                self.CurState = SneakAIRun.SneakAIRunState.Patrol
            end
        end
    end
end

function SneakAIRun:Behave()
    if self.uActor == nil then
        return
    end

    local pos = self:GetPos()
    self:StartPatrol()
end

function SneakAIRun:ReturnToPatrol()
    print("ReturnToPatrol " .. self.GetNpcAlias(self))
    self.CurState = SneakAIRun.SneakAIRunState.ReturnToPatrol
    local pos = self.GetPos(self)
    pos.y = pos.y + 1
    if self.PatrolPos ~= nil then
        self.DoFreeStateTrigger(self)
        self.RunToTask(self, self.PatrolPos[self.PatrolNext], self.StartPatrol, nil, nil, function()
            self:SyncPos(2)
        end)

        self.CurState = SneakAIRun.SneakAIRunState.Patrol
    else
        local npcAlias = self.GetNpcAlias(self)
        print(npcAlias .. ":\230\137\190\228\184\141\229\136\176\229\175\187\232\183\175\228\186\134\239\188\129")
    end
end

function SneakAIRun:Aware()
    print("********************Aware " .. self:GetNpcAlias())
    self.CurState = SneakAIRun.SneakAIRunState.Aware
    self:ClearFollowTask()
    self:Standby()
    local pos = self:GetPos()
    pos.y = pos.y + 1
    local avatarPos = actorUtils.GetAvatarPos()
    local v = self:GetPos()
    local tbl = {x = avatarPos.x - v.x, y = avatarPos.y - v.y, z = avatarPos.z - v.z}
    self:TurnTo(tbl)
    self:DoFreeStyle(0)
end

function SneakAIRun:CheckLure()
    print("********************CheckLure " .. self:GetNpcAlias())
    self.CurState = SneakAIRun.SneakAIRunState.CheckLure
    self:Standby()
    self:DoFreeStyle(3)
    self:CallDelay(6, self.ReturnToPatrol)
end

function SneakAIRun:OnLure(arg1, arg2)
    if arg2.hasSound == true then
        print("********************MoveToLure " .. self:GetNpcAlias())
        self.CurState = SneakAIRun.SneakAIRunState.OnLure
        local pos = self:GetPos()
        local tbl = {x = arg2.soundPos.x - pos.x, y = arg2.soundPos.y - pos.y, z = arg2.soundPos.z - pos.z}
        print("TurnDir")
        print(tbl.x)
        self:TurnTo(tbl)
        self:DoFreeStyle(0)
        self:CallDelay(3, function(arg1, arg2_2)
            arg1:Standby()
            arg1:DoFreeStateTrigger()
            arg1:RunToTask(arg2.soundPos, arg1.CheckLure)
            SneakAIRun.SoundPos = arg2.soundPos
            arg1.CurState = SneakAIRun.SneakAIRunState.OnLureRunToTask
        end)
    end
end

function SneakAIRun:Discover()
    print("********************Discover " .. self:GetNpcAlias())
    self:Standby()
    self:DoFreeStateTrigger()
    self:DoFreeStyle(2)
    local pos = self:GetPos()
    local npcAlias = self:GetNpcAlias()
    print(npcAlias)
    self.CurState = SneakAIRun.SneakAIRunState.Discover
    local avatarPos = actorUtils.GetAvatarPos()
    local v = self:GetPos()
    local tbl = {x = avatarPos.x - v.x, y = avatarPos.y - v.y, z = avatarPos.z - v.z}
    self:TurnTo(tbl)
    local actor = actorMgr:GetActor("2017")
    if actor ~= nil then
        print("\230\136\145\230\138\147\229\136\176\228\189\160\228\186\134\239\188\129")
        actor:RequestInteraction(npcAlias)
    end
end

function SneakAIRun:Start()
    self.CurState = SneakAIRun.SneakAIRunState.Invalid
    self:ThreatTaskInBackGround(self.Discover, self.Aware, self.ReturnToPatrol, self.OnLure)
    self:StartPatrol()
end

function SneakAIRun:OnAppear()
    print("********************OnAppear " .. self:GetNpcAlias() .. "now state=" .. tostring(self.CurState))
    if self.CurState == SneakAIRun.SneakAIRunState.ReturnToPatrol then
        self:ReturnToPatrol()
        return
    else
        if self.CurState == SneakAIRun.SneakAIRunState.Patrol then
            self:StartPatrol()
            return
        else
            if self.CurState == SneakAIRun.SneakAIRunState.OnLureRunToTask then
                self:Standby()
                self:DoFreeStateTrigger()
                self:RunToTask(SneakAIRun.SoundPos, self.CheckLure)
                self.CurState = SneakAIRun.SneakAIRunState.OnLureRunToTask
                return
            end
        end
    end
end

function SneakAIRun:OnDisappear()
    print("********************OnDisappear " .. self:GetNpcAlias() .. "now state=" .. tostring(self.CurState))
end

return SneakAIRun
