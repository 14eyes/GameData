require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local SneakAI3 = class("SneakAI3", NpcActorProxy)
local Q40195ClientConfig = require("Quest/Client/Q40195ClientConfig")

SneakAI3.defaultAlias = "SneakAI3"
SneakAI3.PatrolPosNum = 4
SneakAI3.PatrolPos = nil
SneakAI3.PatrolDir = nil
SneakAI3.PatrolNext = 1
SneakAI3.NarratorTag1 = 0
local routlist = {}
local str = "Q4019504_N15309_Route2"
local v = "Q4019504_N15309_Route3"
local str2 = "Q4019504_N15309_Route4"
routlist[1] = "Q4019504_N15309_Route1"
routlist[2] = str
routlist[3] = v
routlist[4] = str2
SneakAI3.Routlist = routlist

function SneakAI3:StartPatrol()
    print("\230\159\165\233\156\141\229\176\148PatrolNext=" .. self.PatrolNext)
    if self.uActor == nil then
        return
    end

    if self.PatrolNext ~= 1 then
        if self.PatrolNext ~= 5 then
            goto lbl_19
        end
    end

    self.Behave(self)
    goto lbl_86
    ::lbl_19::
    if self.PatrolNext ~= 2 then
        if self.PatrolNext ~= 3 then
            if self.PatrolNext ~= 4 then
                goto lbl_86
            end
        end
    end

    print("\230\159\165\233\156\141\229\176\148\231\130\185\231\154\132\229\186\143\229\136\151\229\143\183\230\152\175\239\188\154 " .. self.PatrolNext)
    print("\230\159\165\233\156\141\229\176\148\231\130\185\228\189\141\229\144\141\231\167\176\230\152\175\239\188\154 " .. self.Routlist[self.PatrolNext])
    print("\230\159\165\233\156\141\229\176\148\229\133\183\228\189\147\229\157\144\230\160\135\228\184\186\239\188\154X=" .. sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos.x .. " Y=" .. sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos.y .. " Z=" .. sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos.z)
    self.WalkToTask(self, sceneData:GetDummyPoint(3, self.Routlist[self.PatrolNext]).pos, self.Behave, nil, nil, function()
        self:SyncPos(1)
    end)

    ::lbl_86::
end

function SneakAI3:Behave()
    print("\230\159\165\233\156\141\229\176\148\230\137\167\232\161\140behave" .. self.PatrolNext)
    if self.uActor == nil then
        return
    end

    if self.PatrolNext == 1 then
        self:Standby()
        self:DoFreeStyle(1170)
    else
        if self.PatrolNext == 4 then
            self:Standby()
            self:DoFreeStateTrigger()
            local questNpcActor = actorMgr:GetActor("40195"):GetQuestNpcActor("Npc15307")
            local n = questNpcActor:GetPos() - self:GetPos()
            self:SteerToAutonomyTask(n, 1, true, true)
            questNpcActor:PartnerReturnToPatrol()
            self:DoFreeStyle(1170)
            self.PatrolNext = self.PatrolNext + 1
            self:StartPatrol()
        else
            if self.PatrolNext == 5 then
                self:CheckNarrator()
            else
                self.PatrolNext = self.PatrolNext + 1
                self:StartPatrol()
            end
        end
    end
end

function SneakAI3:PartnerReturnToPatrol()
    print("\231\147\166\229\138\170\229\141\161\233\128\154\231\159\165\230\136\145\230\159\165\233\156\141\229\176\148\228\186\134\239\188\129")
    self:Standby()
    self:DoFreeStateTrigger()
    self.PatrolNext = self.PatrolNext + 1
    self:StartPatrol()
end

function SneakAI3:NormalCheckNarrator()
    print("NormalCheckNarratorVar")
    self:CheckNarrator()
end

function SneakAI3:CheckNarrator()
    print("CheckNarrator")
    local actor = actorMgr:GetActor(Q40195ClientConfig.ActorAlias)
    if actor.GetSubQuestState(actor, 4019514) == 3 then
        local pos = actor.GetQuestNpcActor(actor, "Npc15307"):GetPos()
        local avatarPos = actorUtils.GetAvatarPos()
        if M.Dist(pos, avatarPos) < 10 then
            actor.QuestNarratorTask(actor, Q40195ClientConfig.Datas.NarratorWithId_4019503, function()
                actor:FinishQuestID(false, 4019515)
            end, 40195)

            self:DoFreeStyle(1170)
        end
    else
        self:CallDelay(1, self.NormalCheckNarrator)
    end
end

function SneakAI3:ReturnToPatrol()
    print("\230\159\165\233\156\141\229\176\148\230\186\156\228\186\134\230\186\156\228\186\134")
    if 4 < self.PatrolNext then
        self.PatrolNext = 4
    end

    self:StartPatrol()
end

function SneakAI3:Aware()
    print("\230\159\165\233\156\141\229\176\148\230\136\145\229\143\145\231\142\176\228\189\160\228\186\134\239\188\129")
    self:ClearFollowTask()
    self:Standby()
    self:DoFreeStateTrigger()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:SteerToAutonomyTask(tbl, 1, true, true)
    self:DoFreeStyle(1050)
end

function SneakAI3:Discover()
    print("\230\159\165\233\156\141\229\176\148\230\136\145\230\138\147\229\136\176\228\189\160\228\186\134\239\188\129")
    self:Standby()
    self:DoFreeStateTrigger()
    self:ClearNarratorTask()
    self:StopNarrator()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:EnterSceneLookCamera(pos, 0, 4, true, true)
    self:SteerToAutonomyTask(tbl, 1, true, true)
    self:DoFreeStyle(1141)
    local actor = actorMgr:GetActor(Q40195ClientConfig.ActorAlias)
    if actor ~= nil then
        actor.QuestNarratorTask(actor, Q40195ClientConfig.Datas.NarratorWithId_4019504, function()
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

function SneakAI3:OnLure(arg1, arg2)
    if arg2.hasSound == true then
        print("\230\159\165\233\156\141\229\176\148\229\143\145\231\142\176\230\137\148\231\159\179\229\173\144\228\186\134\239\188\129")
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

function SneakAI3:CheckLure()
    self:Standby()
    self:DoFreeStyle(1280)
    self:CallDelay(3, self.ReturnToPatrol)
end

function SneakAI3:Start()
    self:ThreatTask(self.Discover, self.Aware, self.ReturnToPatrol, self.OnLure)
    self:StartPatrol()
end

return SneakAI3
