require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local AQ3025SneakAI2 = class("AQ3025SneakAI2", NpcActorProxy)
local Q3025ClientConfig = require("Quest/Client/Q3025ClientConfig")

AQ3025SneakAI2.CanMove = 1
AQ3025SneakAI2.NarratorTag = 1
AQ3025SneakAI2.PatrolPosNum = 1
AQ3025SneakAI2.NarratorEnd = 0

AQ3025SneakAI2.SneakAIRunState = {
    Invalid = -1,
    Patrol = 0,
    ReturnToPatrol = 1,
    PartnerReturnToPatrol = 2,
    Aware = 3,
    PartnerAware = 4,
    Discover = 5
}

AQ3025SneakAI2.CurState = AQ3025SneakAI2.SneakAIRunState.Invalid
local routlist = {}
local str = "Q302504_N12872_1"
local v = "Q302504_N12872_2"
local str2 = "Q302504_N12872_3"
local str3 = "Q302504_N12872_4"
local str4 = "Q302504_N12872_5"
local str5 = "Q302513_N12870"
routlist[1] = "Q302504_N12872"
routlist[2] = str
routlist[3] = v
routlist[4] = str2
routlist[5] = str3
routlist[6] = str4
routlist[7] = str5
AQ3025SneakAI2.Routlist = routlist

function AQ3025SneakAI2:GetCustomFreeStyleList()
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

function AQ3025SneakAI2:SneakSuccessFlag()
    local actor = actorMgr:GetActor("3025")
    if actor.GetQuestNpcActor ~= nil then
        print("AQ3025SneakAI2 Sneak Success")
        actor:FinishQuestID(false, 302504)
    end
end

function AQ3025SneakAI2:StartPatrol()
    print("AQ3025SneakAI2 12872 start patrol to target " .. self.PatrolPosNum .. ", with narrator" .. self.NarratorTag)
    if self.uActor == nil then
        return
    end

    self.CurState = AQ3025SneakAI2.SneakAIRunState.Patrol
    self.DoFreeStateTrigger(self)
    local npcAlias = self.GetNpcAlias(self)
    local actor = actorMgr:GetActor("3025")
    if actor.GetQuestNpcActor ~= nil then
        Npc12873 = actor.GetQuestNpcActor(actor, "Npc12873")
    end

    if self.NarratorTag == 1 then
        self.NarratorTag = 0
        print("12872 \229\188\128\229\167\139\231\172\172\228\184\128\230\174\181\229\188\128\232\189\166 NarratorTag = 0")
        self.NarratorOnlyTaskByData(self, {narratorId = 302503, pauseLen = 10, resumeLen = 5, tag = "StoryInMainPage"}, function(arg1, arg2)
            self.NarratorTag = 2
            self:Behave()
            print("12872 \231\172\172\228\184\128\230\174\181\229\188\128\232\189\166\231\187\147\230\157\159\239\188\140\229\188\128\229\167\139\232\181\176\229\144\145\231\130\1853")
            self:WalkToTask(sceneData:GetDummyPoint(3, self.Routlist[3]).pos, function()
                actor:CallDelay(1, function()
                    print("\232\181\176\229\136\176\231\130\1853\239\188\140\230\137\167\232\161\140\229\138\168\228\189\156")
                    self:DoFreeStyle(1190)
                end)
            end, nil, nil, function()
                self:SyncPos(1)
            end)
        end, 3025)
    else
        if self.NarratorTag == 2 then
            self.NarratorTag = 0
            print("12872 \229\188\128\229\167\139\231\172\172\228\186\140\230\174\181\229\188\128\232\189\166 NarratorTag = 0")
            self.NarratorOnlyTaskByData(self, {narratorId = 302504, pauseLen = 10, resumeLen = 5, tag = "StoryInMainPage"}, function(arg1, arg2)
                print("12872 \231\172\172\228\186\140\230\174\181\229\188\128\232\189\166\231\187\147\230\157\159\239\188\140\229\188\128\229\167\139\232\181\176\229\144\145\231\130\1854")
                self.PatrolPosNum = 3
                self.NarratorTag = 3
                self:Behave()
                self:WalkToTask(sceneData:GetDummyPoint(3, self.Routlist[4]).pos, self.Behave, nil, nil, function()
                    self:SyncPos(1)
                end)

                local questNpcActor = actor:GetQuestNpcActor("Npc12873")
                questNpcActor.PatrolPosNum = 4
                questNpcActor:StartPatrol()
            end, 3025)
        else
            if self.NarratorTag == 3 then
                self.NarratorTag = 0
                print("12872 \229\188\128\229\167\139\231\172\172\228\184\137\230\174\181\229\188\128\232\189\166 NarratorTag = 0")
                self.NarratorOnlyTaskByData(self, {narratorId = 302505, pauseLen = 10, resumeLen = 5, tag = "StoryInMainPage"}, function(arg1, arg2)
                    print("12872 \231\172\172\228\184\137\230\174\181\229\188\128\232\189\166\231\187\147\230\157\159\239\188\140\229\174\140\230\136\144\228\187\187\229\138\161")
                    self.NarratorEnd = 1
                    if self.PatrolPosNum == 8 then
                        self:SneakSuccessFlag()
                    end
                end, 3025)
            end
        end
    end

    if 0 < self.PatrolPosNum then
        if self.PatrolPosNum < 8 then
            print("12872 \229\188\128\229\167\139\232\161\140\232\181\176\239\188\140\231\155\174\230\160\135\228\184\186\231\130\185" .. self.PatrolPosNum)
            self.WalkToTask(self, sceneData:GetDummyPoint(3, self.Routlist[self.PatrolPosNum]).pos, self.Behave, nil, nil, function()
                self:SyncPos(1)
            end)
        end
    else
        if self.PatrolPosNum == 8 then
            print("12872 xmq:Npc arrived the end")
            if self.NarratorEnd == 1 then
                self.SneakSuccessFlag(self)
            end

            self.Standby(self)
        end
    end
end

function AQ3025SneakAI2:Behave()
    if self.uActor == nil then
        return
    end

    self.PatrolPosNum = self.PatrolPosNum + 1
    self:StartPatrol()
end

function AQ3025SneakAI2:GotoLastTarget()
    if self.uActor == nil then
        return
    end

    if self.PatrolPosNum == 3 then
        self.NarratorTag = 2
        self.Behave(self)
        print("12872 \230\129\162\229\164\141\239\188\140\229\188\128\229\167\139\232\181\176\229\144\145\231\130\1853")
        self.WalkToTask(self, sceneData:GetDummyPoint(3, self.Routlist[3]).pos, function()
            quest:CallDelay(1, function()
                print("\232\181\176\229\136\176\231\130\1853\239\188\140\230\137\167\232\161\140\229\138\168\228\189\156")
                self:DoFreeStyle(1190)
            end)
        end, nil, nil, function()
            self:SyncPos(1)
        end)
    else
        if self.PatrolPosNum == 4 then
            self.PatrolPosNum = 3
            self.NarratorTag = 3
            self.Behave(self)
            print("12872 \230\129\162\229\164\141\239\188\140\229\188\128\229\167\139\232\181\176\229\144\145\231\130\1854")
            self.WalkToTask(self, sceneData:GetDummyPoint(3, self.Routlist[4]).pos, self.Behave, nil, nil, function()
                self:SyncPos(1)
            end)
        end
    end
end

function AQ3025SneakAI2:ReturnToPatrol()
    self.CurState = AQ3025SneakAI2.SneakAIRunState.ReturnToPatrol
    print("12872 \229\155\158\229\142\187\231\187\167\231\187\173\232\181\176\232\183\175 " .. self:GetNpcAlias())
    AQ3025SneakAI2.CanMove = 1
    local questNpcActor = actorMgr:GetActor("3025"):GetQuestNpcActor("Npc12872")
    if AQ3025SneakAI2.CanMove == 1 then
        if questNpcActor.CanMove == 1 then
            print("12872 NarratorTag = 0")
            self:Standby()
            self:DoFreeStateTrigger()
            self:StartPatrol()
            local v = actorMgr:GetActor("3025"):GetQuestNpcActor("Npc12872")
            if v ~= nil then
                v:PartnerReturnToPatrol()
            end
        end
    end
end

function AQ3025SneakAI2:PartnerReturnToPatrol()
    self.CurState = AQ3025SneakAI2.SneakAIRunState.PartnerReturnToPatrol
    print("12872\229\155\158\229\142\187\231\187\167\231\187\173\232\181\176\232\183\175 " .. self:GetNpcAlias())
    self:Standby()
    self:DoFreeStateTrigger()
    self:StartPatrol()
end

function AQ3025SneakAI2:Aware()
    print("12872********************Aware " .. self:GetNpcAlias())
    self.CurState = AQ3025SneakAI2.SneakAIRunState.Aware
    AQ3025SneakAI2.CanMove = 0
    local questNpcActor = actorMgr:GetActor("3025"):GetQuestNpcActor("Npc12872")
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

function AQ3025SneakAI2:PartnerAware()
    print("12872********************PartnerAware " .. self:GetNpcAlias())
    self.CurState = AQ3025SneakAI2.SneakAIRunState.PartnerAware
    self:ClearFollowTask()
    self:Standby()
    self:DoFreeStateTrigger()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:TurnTo(tbl)
    self:DoFreeStyle(1190)
end

function AQ3025SneakAI2:Discover()
    print("12872********************Discover " .. self.GetNpcAlias(self))
    self.CurState = AQ3025SneakAI2.SneakAIRunState.Discover
    local questNpcActor
    self.PatrolPosNum = 0
    self.NarratorTag = 0
    self.UnCallFunc(self, self.StartPatrol)
    self.UnCallFunc(self, self.Behave)
    self.UnCallFunc(self, self.CheckCanMove)
    local actor = actorMgr:GetActor("3025")
    if actor.GetQuestNpcActor ~= nil then
        questNpcActor = actor:GetQuestNpcActor("Npc12873")
    end

    globalActor:StopLocalAvatar()
    actor:EnablePlayerInput(false)
    if questNpcActor ~= nil then
        questNpcActor:Standby()
        questNpcActor:DoFreeStateTrigger()
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

    actorUtils.FinishQuestID(true, 302504)
    actorUtils.FinishQuestID(true, 302513)
    print("Quest 302504 failed because of being discovered by AI2")
    actorMgr:GetActor("3025"):EnablePlayerInput(true)
end

function AQ3025SneakAI2:Start()
    print("********************Start" .. self:GetNpcAlias())
    self:ThreatTaskInBackGround(self.Discover, self.Aware, self.ReturnToPatrol)
    self:StartPatrol()
end

function AQ3025SneakAI2:OnAppear()
    print("********************OnAppear " .. self:GetNpcAlias() .. " now state=" .. tostring(self.CurState))
    if self.CurState == AQ3025SneakAI2.SneakAIRunState.ReturnToPatrol then
        self:ReturnToPatrol()
        return
    else
        if self.CurState == AQ3025SneakAI2.SneakAIRunState.Patrol then
            self:StartPatrol()
            self:GotoLastTarget()
            return
        end
    end
end

function AQ3025SneakAI2:OnDisappear()
    print("********************OnDisappear " .. self:GetNpcAlias() .. " now state=" .. tostring(self.CurState))
end

return AQ3025SneakAI2
