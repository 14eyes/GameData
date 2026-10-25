require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11015 = class("Quest11015", QuestActorProxy)
Quest11015.defaultAlias = "Quest11015"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest11015:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest11015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1101501"] = self.OnSubStart1101501,
        ["1101506"] = self.OnSubStart1101506,
        ["1101507"] = self.OnSubStart1101507,
        ["1101510"] = self.OnSubStart1101510,
        ["1101509"] = self.OnSubStart1101509,
        ["1101502"] = self.OnSubStart1101502,
        ["1101508"] = self.OnSubStart1101508,
        ["1101503"] = self.OnSubStart1101503,
        ["1101504"] = self.OnSubStart1101504,
        ["1101511"] = self.OnSubStart1101511,
        ["1101505"] = self.OnSubStart1101505
    }
end

function Quest11015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1101501"] = self.OnSubFinish1101501,
        ["1101506"] = self.OnSubFinish1101506,
        ["1101507"] = self.OnSubFinish1101507,
        ["1101510"] = self.OnSubFinish1101510,
        ["1101509"] = self.OnSubFinish1101509,
        ["1101502"] = self.OnSubFinish1101502,
        ["1101508"] = self.OnSubFinish1101508,
        ["1101503"] = self.OnSubFinish1101503,
        ["1101504"] = self.OnSubFinish1101504,
        ["1101511"] = self.OnSubFinish1101511,
        ["1101505"] = self.OnSubFinish1101505
    }
end

function Quest11015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1101501"] = self.OnSubFailed1101501,
        ["1101506"] = self.OnSubFailed1101506,
        ["1101502"] = self.OnSubFailed1101502,
        ["1101503"] = self.OnSubFailed1101503,
        ["1101504"] = self.OnSubFailed1101504,
        ["1101505"] = self.OnSubFailed1101505
    }
end

function Quest11015:Start()
    print("Start")
end

function Quest11015:OnDestroy()
    print("OnDestroy")
end

function Quest11015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11015:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11015:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest11015:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest11015:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    print("Dialogue change core state")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if arg1 == 1 then
        actor:FinishQuestID(false, 1101507)
    elseif arg1 == 2 then
        actor:FinishQuestID(false, 1101510)
    elseif arg1 == 3 then
        actor:FinishQuestID(false, 1101511)
    end
end

function Quest11015:OnSubStart1101501(arg1)
    print("OnSubStart1101501")
    self:NpcCreate(arg1, npcs.Npc2143Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12344Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12345Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12346Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12371Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12348Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12372Data.id, 0)
    actorMgr:CreateActorWithPos("Q11015TriggerStart", "Actor/Gadget/Q11015TriggerStart", 70900002, 0, {x = -792.8423, y = 237.3885, z = 419.4327}, {x = 0, y = 0, z = 0}, true, false, 3)
    self:NpcCreate(arg1, npcs.Npc10233Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc1016Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12373Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12349Data.id, 0)
end

function Quest11015:OnSubFinish1101501(arg1)
    print("OnSubFinish1101501")
    self:TransmitPlayerWithTextByQuestId(1101501, 1, {"QUEST_Message_Q1101503"}, 3.5)
    self:NpcDestroy(npcs.Npc2143Data.alias, 3)
    self:NpcDestroy(npcs.Npc10233Data.alias, 3)
end

function Quest11015:OnSubFailed1101501(arg1)
    print("OnSubFailed1101501")
end

function Quest11015:OnSubStart1101506(arg1)
    print("OnSubStart1101506")
    self:ClearNarratorTask()
    self:StopNarrator()
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc10211Data.id, 0)
        actorMgr:CreateActorWithPos("Q11015TriggerNingguangAdded", "Actor/Gadget/Q11015TriggerNingguangAdded", 70900002, 0, {x = -769.209, y = 301.2195, z = 400.3403}, {x = 0, y = 0, z = 0}, true, false, 3)
        arg1_2:NpcDestroy(npcs.Npc1045Data.alias, 3)
        arg1_2:NpcDestroy(npcs.Npc1046Data.alias, 3)
        arg1_2:GetQuestNpcActor(npcs.PaimonData.alias):Destroy(false)
        arg1_2:NpcDestroy(npcs.Npc1031Data.alias, 3)
    end)
end

function Quest11015:OnSubFinish1101506(arg1)
    print("OnSubFinish1101506")
    globalActor:PlayerEnterDungeon(461, 1126)
    self:AfterMainPageActiveSafeCall(function(arg1)
        arg1:NpcDestroy(npcs.Npc10211Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12344Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12345Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12346Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12371Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12348Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12372Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc1046Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc1031Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc1045Data.alias, 3)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):Destroy(false)
    end)
end

function Quest11015:OnSubFailed1101506(arg1)
    print("OnSubFailed1101506")
end

function Quest11015:OnSubStart1101507(arg1)
    print("OnSubStart1101507")
end

function Quest11015:OnSubFinish1101507(arg1)
    print("OnSubFinish1101507")
end

function Quest11015:OnSubStart1101510(arg1)
    print("OnSubStart1101510")
end

function Quest11015:OnSubFinish1101510(arg1)
    print("OnSubFinish1101510")
end

function Quest11015:OnSubStart1101509(arg1)
    print("OnSubStart1101509")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:NpcDestroy(npcs.Npc10211Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12344Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12345Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12346Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12371Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12348Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12372Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc1031Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc1046Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc1045Data.alias, 3)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):Destroy(false)
    end)
end

function Quest11015:OnSubFinish1101509(arg1)
    print("OnSubFinish1101509")
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(2, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.NarratorWithIdBoss1)
        end)
    end)
end

function Quest11015:OnSubStart1101502(arg1)
    print("OnSubStart1101502")
    self:NpcDestroy(npcs.Npc1045Data.alias, 3)
    self:NpcDestroy(npcs.Npc1046Data.alias, 3)
    self:NpcDestroy(npcs.Npc1031Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):Destroy(false)
end

function Quest11015:OnSubFinish1101502(arg1)
    print("OnSubFinish1101502")
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithIdBoss2)
    end)

    self:NpcDestroy(npcs.Npc1016Data.alias, 3)
    self:NpcDestroy(npcs.Npc12373Data.alias, 3)
    self:NpcDestroy(npcs.Npc12349Data.alias, 3)
end

function Quest11015:OnSubFailed1101502(arg1)
    print("OnSubFailed1101502")
end

function Quest11015:OnSubStart1101508(arg1)
    print("OnSubStart1101508")
end

function Quest11015:OnSubFinish1101508(arg1)
    print("OnSubFinish1101508")
    self:ActionSafeCall(function(arg1)
        arg1:NpcDestroy(npcs.Npc12344Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12345Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12346Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12371Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12348Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc12372Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc2143Data.alias, 3)
    end)
end

function Quest11015:OnSubStart1101503(arg1)
    print("OnSubStart1101503")
    self:ClearNarratorTask()
    self:StopNarrator()
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc1016Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc10211Data.id, 0)
        actorMgr:CreateActorWithPos("Q11015TriggerPortAdded", "Actor/Gadget/Q11015TriggerPortAdded", 70900002, 0, {x = -470.6274, y = 200.6578, z = -823.0373}, {x = 0, y = 0, z = 0}, true, false, 3)
    end)
end

function Quest11015:OnSubFinish1101503(arg1)
    print("OnSubFinish1101503")
    self:ActionSafeCall(function(arg1)
        arg1:NpcDestroy(npcs.Npc10211Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc1045Data.alias, 3)
        arg1:NpcDestroy(npcs.Npc10258Data.alias, 3)
    end)
end

function Quest11015:OnSubFailed1101503(arg1)
    print("OnSubFailed1101503")
end

function Quest11015:OnSubStart1101504(arg1)
    print("OnSubStart1101504")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc10211Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc1045Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12355Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12356Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12357Data.id, 0)
        actorMgr:CreateActorWithPos("Q11015Trigger", "Actor/Gadget/Q11015Trigger", 70900002, 0, {x = -814.0079, y = 464.2698, z = 435.5402}, {x = 0, y = 0, z = 0}, true, false, 3)
        globalActor:LeaveWeather()
        arg1_2:GetQuestNpcActor(npcs.Npc12355Data.alias):SitOnChair(0)
        arg1_2:GetQuestNpcActor(npcs.Npc12356Data.alias):SitOnChair(0)
        arg1_2:GetQuestNpcActor(npcs.Npc12357Data.alias):SitOnChair(0)
        arg1_2:GetQuestNpcActor(npcs.Npc10211Data.alias):SitOnChair(0)
        arg1_2:GetQuestNpcActor(npcs.Npc1045Data.alias):SitOnChair(0)
        arg1_2:NpcCreate(arg1, npcs.Npc12349Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12373Data.id, 0)
    end)
end

function Quest11015:OnSubFinish1101504(arg1)
    print("OnSubFinish1101504")
    self:NpcDestroy(npcs.Npc1016Data.alias, 3)
    self:NpcDestroy(npcs.Npc12373Data.alias, 3)
    self:NpcDestroy(npcs.Npc12349Data.alias, 3)
end

function Quest11015:OnSubFailed1101504(arg1)
    print("OnSubFailed1101504")
end

function Quest11015:OnSubStart1101511(arg1)
    print("OnSubStart1101511")
end

function Quest11015:OnSubFinish1101511(arg1)
    print("OnSubFinish1101511")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
end

function Quest11015:OnSubStart1101505(arg1)
    print("OnSubStart1101505")
    self:RequestInteraction(npcs.Npc1045Data.alias)
end

function Quest11015:OnSubFinish1101505(arg1)
    print("OnSubFinish1101505")
end

function Quest11015:OnSubFailed1101505(arg1)
    print("OnSubFailed1101505")
end

return Quest11015
