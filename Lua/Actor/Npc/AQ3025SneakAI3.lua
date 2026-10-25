require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local AQ3025SneakAI3 = class("AQ3025SneakAI3", NpcActorProxy)
local AQ3025SneakAI2 = class("AQ3025SneakAI2", NpcActorProxy)
local Q3025ClientConfig = require("Quest/Client/Q3025ClientConfig")

AQ3025SneakAI3.CanMove = 1
AQ3025SneakAI3.PatrolPosNum = 1
local routlist = {}
local str = "Q302504_N12873_1"
local v = "Q302504_N12873_2"
local str2 = "Q302504_N12873_3"
local str3 = "Q302504_N12873_4"
local str4 = "Q302504_N12873_5"
local str5 = "Q302513_N12871"
routlist[1] = "Q302504_N12873"
routlist[2] = str
routlist[3] = v
routlist[4] = str2
routlist[5] = str3
routlist[6] = str4
routlist[7] = str5
AQ3025SneakAI3.Routlist = routlist

AQ3025SneakAI3.SneakAIRunState = {
    Invalid = -1,
    Patrol = 0,
    ReturnToPatrol = 1,
    PartnerReturnToPatrol = 2,
    Aware = 3,
    PartnerAware = 4,
    Discover = 5
}

AQ3025SneakAI3.CurState = AQ3025SneakAI3.SneakAIRunState.Invalid

function AQ3025SneakAI3:GetCustomFreeStyleList()
    local tbl = {}
    local n = 1130
    local v = 1200
    local n2 = 0
    local n3 = 4210
    local n4 = 1170
    local n5 = 1171
    tbl[1] = 1190
    tbl[2] = n
    tbl[3] = v
    tbl[4] = n2
    tbl[5] = n3
    tbl[6] = n4
    tbl[7] = n5
    return tbl
end

function AQ3025SneakAI3:StartPatrol()
    print("AQ3025SneakAI3 start Patrol\239\188\140\231\155\174\230\160\135\231\130\185" .. self.PatrolPosNum)
    if self.uActor == nil then
        return
    end

    self.CurState = AQ3025SneakAI3.SneakAIRunState.Patrol
    self.DoFreeStateTrigger(self)
    local npcAlias = self.GetNpcAlias(self)
    if self.PatrolPosNum == 4 then
        self.Standby(self)
        self.WalkToTask(self, sceneData:GetDummyPoint(3, self.Routlist[self.PatrolPosNum]).pos, self.Behave, nil, nil, function()
            self:SyncPos(1)
        end)
    else
        if self.PatrolPosNum < 8 then
            if 0 < self.PatrolPosNum then
                self.WalkToTask(self, sceneData:GetDummyPoint(3, self.Routlist[self.PatrolPosNum]).pos, self.Behave, nil, nil, function()
                    self:SyncPos(1)
                end)
            end
        else
            if self.PatrolPosNum == 8 then
                self.Standby(self)
            end
        end
    end
end

function AQ3025SneakAI3:Behave()
    print("AQ3025SneakAI3 Do Behave " .. self.PatrolPosNum)
    if self.uActor == nil then
        return
    end

    if self.PatrolPosNum == 3 then
        print("\232\189\174\231\169\186\239\188\140\231\173\137\233\128\154\231\159\165")
    else
        self.PatrolPosNum = self.PatrolPosNum + 1
        self:StartPatrol()
    end
end

function AQ3025SneakAI3:ReturnToPatrol()
    self.CurState = AQ3025SneakAI3.SneakAIRunState.ReturnToPatrol
    print("\229\155\158\229\142\187\231\187\167\231\187\173\232\181\176\232\183\175 " .. self:GetNpcAlias())
    AQ3025SneakAI3.CanMove = 1
    local questNpcActor = actorMgr:GetActor("3025"):GetQuestNpcActor("Npc12873")
    if AQ3025SneakAI3.CanMove == 1 then
        if questNpcActor.CanMove == 1 then
            self:Standby()
            self:DoFreeStateTrigger()
            self:StartPatrol()
            local v = actorMgr:GetActor("3025"):GetQuestNpcActor("Npc12873")
            if v ~= nil then
                v:PartnerReturnToPatrol()
            end
        end
    end
end

function AQ3025SneakAI3:PartnerReturnToPatrol()
    self.CurState = AQ3025SneakAI3.SneakAIRunState.PartnerReturnToPatrol
    print("\229\155\158\229\142\187\231\187\167\231\187\173\232\181\176\232\183\175 " .. self:GetNpcAlias())
    self:Standby()
    self:DoFreeStateTrigger()
    self:StartPatrol()
end

function AQ3025SneakAI3:Aware()
    print("********************Aware " .. self:GetNpcAlias())
    self.CurState = AQ3025SneakAI3.SneakAIRunState.Aware
    AQ3025SneakAI3.CanMove = 0
    local questNpcActor = actorMgr:GetActor("3025"):GetQuestNpcActor("Npc12873")
    if questNpcActor ~= nil then
        questNpcActor:PartnerAware()
    end

    self:ClearFollowTask()
    self:Standby()
    self:DoFreeStateTrigger()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:TurnTo(tbl)
    self:DoFreeStyle(1190)
end

function AQ3025SneakAI3:PartnerAware()
    self.CurState = AQ3025SneakAI3.SneakAIRunState.PartnerAware
    self:ClearFollowTask()
    self:Standby()
    self:DoFreeStateTrigger()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:TurnTo(tbl)
    self:DoFreeStyle(1190)
end

function AQ3025SneakAI3:Discover()
    print("********************Discover " .. self.GetNpcAlias(self))
    self.CurState = AQ3025SneakAI3.SneakAIRunState.Discover
    self.PatrolPosNum = 0
    self.UnCallFunc(self, self.StartPatrol)
    self.UnCallFunc(self, self.Behave)
    self.UnCallFunc(self, self.CheckCanMove)
    local actor = actorMgr:GetActor("3025")
    if actor.GetQuestNpcActor ~= nil then
        Npc12872 = actor:GetQuestNpcActor("Npc12872")
    end

    globalActor:StopLocalAvatar()
    actor:EnablePlayerInput(false)
    if Npc12872 ~= nil then
        Npc12872:Standby()
        Npc12872:DoFreeStateTrigger()
    end

    self.Standby(self)
    self.DoFreeStateTrigger(self)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self.GetPos(self)
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self.SteerToAutonomyTask(self, tbl, 1, true, true)
    self.CallDelay(self, 1, function()
        self:Standby()
    end)

    if actor ~= nil then
        actorUtils.FinishQuestID(true, 302504)
        actorUtils.FinishQuestID(true, 302513)
        print("Quest 302504 failed because of being discovered by AI3")
    end

    actor:EnablePlayerInput(true)
end

function AQ3025SneakAI3:OnAppear()
    print("********************OnAppear " .. self:GetNpcAlias() .. " now state=" .. tostring(self.CurState))
    if self.CurState == AQ3025SneakAI3.SneakAIRunState.ReturnToPatrol then
        self:ReturnToPatrol()
        return
    else
        if self.CurState == AQ3025SneakAI3.SneakAIRunState.Patrol then
            self:StartPatrol()
            return
        end
    end
end

function AQ3025SneakAI3:OnDisappear()
    print("********************OnDisappear " .. self:GetNpcAlias() .. " now state=" .. tostring(self.CurState))
end

function AQ3025SneakAI3:Start()
    self:ThreatTaskInBackGround(self.Discover, self.Aware, self.ReturnToPatrol)
    self:StartPatrol()
end

return AQ3025SneakAI3
