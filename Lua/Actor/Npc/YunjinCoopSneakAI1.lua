require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local YunjinCoopSneakAI1 = class("YunjinCoopSneakAI1", NpcActorProxy)
local Q19038ClientConfig = require("Quest/Client/Q19038ClientConfig")

YunjinCoopSneakAI1.CanMove = 1
YunjinCoopSneakAI1.PatrolPosNum = 1
YunjinCoopSneakAI1.NarratorTag = 1
local routlist = {}
local str = "Q1903801_N12320_Route2"
local v = "Q1903801_N12320_Route3"
local str2 = "Q1903801_N12320_Route4"
local str3 = "Q1903801_N12320_Route5"
local str4 = "Q1903801_N12320_Route6"
routlist[1] = "Q1903801_N12320_Route1"
routlist[2] = str
routlist[3] = v
routlist[4] = str2
routlist[5] = str3
routlist[6] = str4
YunjinCoopSneakAI1.Routlist = routlist

function YunjinCoopSneakAI1:StartPatrol()
    print("PatrolPosNum \230\152\175 " .. self.PatrolPosNum)
    print("NarratorTag \230\152\175 " .. self.NarratorTag)
    if self.uActor == nil then
        return
    end

    self.DoFreeStateTrigger(self)
    local npcAlias = self.GetNpcAlias(self)
    if self.NarratorTag == 1 then
        self.NarratorOnlyTaskByData(self, {narratorId = 190385101, pauseLen = 10, resumeLen = 5, tag = "StoryInMainPage"}, nil, 19038)
    else
        if self.NarratorTag == 2 then
            self.NarratorOnlyTaskByData(self, {narratorId = 190385103, pauseLen = 10, resumeLen = 5, tag = "StoryInMainPage"}, function()
                self:Behave()
                local actor = actorMgr:GetActor("19038")
                if actor.GetQuestNpcActor ~= nil then
                    local questNpcActor = actor:GetQuestNpcActor("Npc12413")
                    if questNpcActor.Behave ~= nil then
                        questNpcActor:Behave()
                    end
                end
            end, 19038)
        else
            if self.NarratorTag == 3 then
                self.NarratorOnlyTaskByData(self, {narratorId = 190385108, pauseLen = 10, resumeLen = 5, tag = "StoryInMainPage"}, nil, 19038)
            end
        end
    end

    if self.PatrolPosNum < 5 then
        self.WalkToTask(self, sceneData:GetDummyPoint(3, self.Routlist[self.PatrolPosNum]).pos, self.Behave, nil, nil, function()
            self:SyncPos(1)
        end)
    else
        if self.PatrolPosNum == 5 then
            self.Standby(self)
            self.TurnTo(self, M.Euler2DirXZ(sceneData:GetDummyPoint(3, self.Routlist[self.PatrolPosNum - 1]).rot))
            self.DoFreeStyle(self, 1230)
        else
            if 5 < self.PatrolPosNum then
                if self.PatrolPosNum < 8 then
                    self.WalkToTask(self, sceneData:GetDummyPoint(3, self.Routlist[self.PatrolPosNum - 1]).pos, self.Behave, nil, nil, function()
                        self:SyncPos(1)
                    end)
                end
            end
        end
    end
end

function YunjinCoopSneakAI1:Behave()
    print("Do Behave " .. self.PatrolPosNum)
    if self.uActor == nil then
        return
    end

    if self.PatrolPosNum == 4 then
        self.NarratorTag = 2
    else
        if self.PatrolPosNum == 5 then
            self.NarratorTag = 3
        else
            self.NarratorTag = 0
        end
    end

    if self.PatrolPosNum == 7 then
        local actor = actorMgr:GetActor(Q19038ClientConfig.ActorAlias)
        if actor.GetQuestNpcActor ~= nil then
            print("Sneak Success")
            actor:FinishQuestID(false, 1903803)
            actor:FinishQuestID(true, 1903804)
            actor:FinishQuestID(true, 1903805)
        end
    end

    self.PatrolPosNum = self.PatrolPosNum + 1
    self:StartPatrol()
end

function YunjinCoopSneakAI1:ReturnToPatrol()
    print("\229\155\158\229\142\187\231\187\167\231\187\173\232\181\176\232\183\175 " .. self:GetNpcAlias())
    YunjinCoopSneakAI1.CanMove = 1
    local actor = actorMgr:GetActor("19038")
    if actor.GetQuestNpcActor ~= nil then
        local questNpcActor = actor:GetQuestNpcActor("Npc12413")
        if YunjinCoopSneakAI1.CanMove == 1 then
            if questNpcActor.CanMove == 1 then
                self.NarratorTag = 0
                self:Standby()
                self:DoFreeStateTrigger()
                self:StartPatrol()
                print("\229\143\171\232\175\151\233\159\181\231\187\167\231\187\173\232\181\176")
                questNpcActor:PartnerReturnToPatrol()
            end
        end
    end
end

function YunjinCoopSneakAI1:PartnerReturnToPatrol()
    print("\229\155\158\229\142\187\231\187\167\231\187\173\232\181\176\232\183\175 " .. self:GetNpcAlias())
    self:Standby()
    self:DoFreeStateTrigger()
    self:StartPatrol()
end

function YunjinCoopSneakAI1:Aware()
    print("********************Aware " .. self:GetNpcAlias())
    YunjinCoopSneakAI1.CanMove = 0
    local actor = actorMgr:GetActor("19038")
    if actor.GetQuestNpcActor ~= nil then
        local questNpcActor = actor:GetQuestNpcActor("Npc12413")
        if questNpcActor ~= nil then
            print("\233\128\154\231\159\165\232\175\151\233\159\181\229\129\156\228\184\139")
            questNpcActor:PartnerAware()
        end
    end

    self:ClearFollowTask()
    self:Standby()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:TurnTo(tbl)
    self:DoFreeStyle(1190)
end

function YunjinCoopSneakAI1:PartnerAware()
    print("\232\175\151\233\159\181\229\143\171\230\136\145\229\129\156\228\184\139")
    self:ClearFollowTask()
    self:Standby()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:TurnTo(tbl)
    self:DoFreeStyle(1190)
end

function YunjinCoopSneakAI1:Discover()
    print("********************Discover " .. self:GetNpcAlias())
    self:Standby()
    self:DoFreeStateTrigger()
    local pos = self:GetPos()
    local npcAlias = self:GetNpcAlias()
    print(npcAlias)
    local avatarPos = actorUtils.GetAvatarPos()
    local v = self:GetPos()
    local tbl = {x = avatarPos.x - v.x, y = avatarPos.y - v.y, z = avatarPos.z - v.z}
    self:TurnTo(tbl)
    local actor = actorMgr:GetActor("19038")
    if actor.GetQuestNpcActor ~= nil then
        local questNpcActor = actor:GetQuestNpcActor("Npc12413")
        if questNpcActor ~= nil then
            print("\233\128\154\231\159\165\232\175\151\233\159\181\229\129\156\228\184\139")
            questNpcActor:PartnerAware()
        end

        print("\230\136\145\230\138\147\229\136\176\228\189\160\228\186\134\239\188\129")
        actor:RequestInteraction(npcAlias)
    end
end

function YunjinCoopSneakAI1:Start()
    self:ThreatTask(self.Discover, self.Aware, self.ReturnToPatrol)
    self:StartPatrol()
end

return YunjinCoopSneakAI1
