require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local SneakAI1 = class("SneakAI1", NpcActorProxy)
local Q40195ClientConfig = require("Quest/Client/Q40195ClientConfig")

SneakAI1.defaultAlias = "SneakAI1"
SneakAI1.PatrolPosNum = 4
SneakAI1.PatrolPos = nil
SneakAI1.PatrolDir = nil
SneakAI1.PatrolNext = 2
local routlist = {}
local str = "Q4019504_N15307_Route2"
local v = "Q4019504_N15307_Route3"
local str2 = "Q4019504_N15307_Route4"
routlist[1] = "Q4019504_N15307_Route1"
routlist[2] = str
routlist[3] = v
routlist[4] = str2
SneakAI1.Routlist = routlist

function SneakAI1:StartPatrol()
    print("\229\141\161\231\186\179\229\141\161PatrolNext=" .. self.PatrolNext)
    if self.uActor == nil then
        return
    end

    if self.PatrolNext ~= 2 then
        if self.PatrolNext ~= 3 then
            if self.PatrolNext ~= 4 then
                goto lbl_77
            end
        end
    end

    print("\229\141\161\231\186\179\229\141\161\231\130\185\231\154\132\229\186\143\229\136\151\229\143\183\230\152\175\239\188\154 " .. self.PatrolNext)
    print("\229\141\161\231\186\179\229\141\161\231\130\185\228\189\141\229\144\141\231\167\176\230\152\175\239\188\154 " .. self.Routlist[self.PatrolNext])
    print("\229\141\161\231\186\179\229\141\161\229\133\183\228\189\147\229\157\144\230\160\135\228\184\186\239\188\154X=" .. sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos.x .. " Y=" .. sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos.y .. " Z=" .. sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos.z)
    self.WalkToTask(self, sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos, self.Behave, nil, nil, function()
        self:SyncPos(1)
    end)

    ::lbl_77::
end

function SneakAI1:Behave()
    print("\229\141\161\231\186\179\229\141\161\230\137\167\232\161\140behave" .. self.PatrolNext)
    if self.uActor == nil then
        return
    end

    if self.PatrolNext == 4 then
        self:Standby()
        self:DoFreeStyle(1280)
    else
        self.PatrolNext = self.PatrolNext + 1
        self:StartPatrol()
    end
end

function SneakAI1:PartnerReturnToPatrol()
    print("\230\159\165\233\156\141\229\176\148\233\128\154\231\159\165\230\136\145\229\141\161\231\186\179\229\141\161\228\186\134\239\188\129")
    self:Standby()
    self:DoFreeStateTrigger()
    local n = actorMgr:GetActor("40195"):GetQuestNpcActor("Npc15309"):GetPos() - self:GetPos()
    self:SteerToAutonomyTask(n, 1, true, true)
end

function SneakAI1:ReturnToPatrol()
    print("\229\141\161\231\186\179\229\141\161\230\186\156\228\186\134\230\186\156\228\186\134")
    self:StartPatrol()
end

function SneakAI1:Aware()
    print("\229\141\161\231\186\179\229\141\161\230\136\145\229\143\145\231\142\176\228\189\160\228\186\134\239\188\129")
    self:ClearFollowTask()
    self:Standby()
    self:DoFreeStateTrigger()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:SteerToAutonomyTask(tbl, 1, true, true)
    self:DoFreeStyle(1050)
end

function SneakAI1:Discover()
    print("\229\141\161\231\186\179\229\141\161\230\136\145\230\138\147\229\136\176\228\189\160\228\186\134\239\188\129")
    self:Standby()
    self:DoFreeStateTrigger()
    self:ClearNarratorTask()
    self:StopNarrator()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:SteerToAutonomyTask(tbl, 1, true, true)
    self:DoFreeStyle(1230)
    local actor = actorMgr:GetActor(Q40195ClientConfig.ActorAlias)
    if actor ~= nil then
        actor.QuestNarratorTask(actor, Q40195ClientConfig.Datas.NarratorWithId_4019513, function()
            actor:FinishQuestID(true, 4019504)
            actor:FinishQuestID(true, 4019514)
            actor:FinishQuestID(true, 4019515)
            actor:ShowBlackScreen(0.5, 0.5, 0.5, function()
                actor:DestroyQuestNpcActor("Npc15307")
                actor:DestroyQuestNpcActor("Npc15308")
                actor:DestroyQuestNpcActor("Npc15309")
            end, nil, nil, "", false, true)
        end, 40195)
    end
end

function SneakAI1:OnLure(arg1, arg2)
    if arg2.hasSound == true then
        print("\229\141\161\231\186\179\229\141\161\229\143\145\231\142\176\230\137\148\231\159\179\229\173\144\228\186\134\239\188\129")
        local pos = self:GetPos()
        local tbl = {x = arg2.soundPos.x - pos.x, y = arg2.soundPos.y - pos.y, z = arg2.soundPos.z - pos.z}
        self:SteerToAutonomyTask(tbl, 1, true, true)
        self:DoFreeStyle(1050)
        self:CallDelay(2, function(arg1, arg2_2)
            arg1:Standby()
            arg1:DoFreeStateTrigger()
            arg1:WalkToTask(arg2.soundPos, arg1.CheckLure)
        end)
    end
end

function SneakAI1:CheckLure()
    self:Standby()
    self:DoFreeStyle(1280)
    self:CallDelay(3, self.ReturnToPatrol)
end

function SneakAI1:Start()
    print("\229\141\161\231\186\179\229\141\161\229\188\128\229\167\139\230\189\156\232\161\140")
    self:ThreatTask(self.Discover, self.Aware, self.ReturnToPatrol, self.OnLure)
    self:StartPatrol()
end

return SneakAI1
