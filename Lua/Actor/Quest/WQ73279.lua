require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73279 = class("Quest73279", QuestActorProxy)
Quest73279.defaultAlias = "Quest73279"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73279:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73279:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7327910"] = self.OnSubStart7327910,
        ["7327909"] = self.OnSubStart7327909,
        ["7327901"] = self.OnSubStart7327901,
        ["7327902"] = self.OnSubStart7327902,
        ["7327903"] = self.OnSubStart7327903,
        ["7327904"] = self.OnSubStart7327904,
        ["7327905"] = self.OnSubStart7327905,
        ["7327906"] = self.OnSubStart7327906,
        ["7327907"] = self.OnSubStart7327907,
        ["7327908"] = self.OnSubStart7327908
    }
end

function Quest73279:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7327910"] = self.OnSubFinish7327910,
        ["7327909"] = self.OnSubFinish7327909,
        ["7327901"] = self.OnSubFinish7327901,
        ["7327902"] = self.OnSubFinish7327902,
        ["7327903"] = self.OnSubFinish7327903,
        ["7327904"] = self.OnSubFinish7327904,
        ["7327905"] = self.OnSubFinish7327905,
        ["7327906"] = self.OnSubFinish7327906,
        ["7327907"] = self.OnSubFinish7327907,
        ["7327908"] = self.OnSubFinish7327908
    }
end

function Quest73279:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73279:Start()
    print("Start")
end

function Quest73279:OnDestroy()
    print("OnDestroy")
end

function Quest73279:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73279:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73279:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73279:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73279:OnSubStart7327910(arg1)
    print("OnSubStart7327910")
end

function Quest73279:OnSubFinish7327910(arg1)
    print("OnSubFinish7327910")
end

function Quest73279:OnSubStart7327909(arg1)
    print("OnSubStart7327909")
end

function Quest73279:OnSubFinish7327909(arg1)
    print("OnSubFinish7327909")
end

function Quest73279:OnSubStart7327901(arg1)
    print("OnSubStart7327901")
    this:CreateQuestNpc(arg1, npcs.Npc4292Data.id, 1)
end

function Quest73279:OnSubFinish7327901(arg1)
    print("OnSubFinish7327901")
end

function Quest73279:OnSubStart7327902(arg1)
    print("OnSubStart7327902")
    actorMgr:CreateActorWithPos("Q7327902_EnterTrigger", "Actor/Gadget/Q7327902_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7327902_guide").pos, sceneData:GetDummyPoint(3, "Q7327902_guide").rot, true, false, 3)
end

function Quest73279:OnSubFinish7327902(arg1)
    print("OnSubFinish7327902")
    this:NarratorOnlyTaskByData(datas.NarratorWithId7327902)
    this:CallDelay(2.5, function(arg1)
        this:EnterSceneLookCamera({x = -1465.565, y = -14.585, z = 5304.671}, 0.5, 3, true, true)
    end)
end

function Quest73279:OnSubStart7327903(arg1)
    print("OnSubStart7327903")
    this:CreateQuestNpc(arg1, npcs.Npc20842Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc20842Data.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc20937Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc20938Data.id, 3)
    actorMgr:CreateActorWithPos("Q7327903_EnterTrigger", "Actor/Gadget/Q7327903_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7327905_guide").pos, sceneData:GetDummyPoint(3, "Q7327905_guide").rot, true, false, 3)
end

function Quest73279:OnSubFinish7327903(arg1)
    print("OnSubFinish7327903")
end

function Quest73279:OnSubStart7327904(arg1)
    print("OnSubStart7327904")
    this:GetQuestNpcActor(npcs.Npc20842Data.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7327904_EnterTrigger", "Actor/Gadget/Q7327904_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7327903_guide").pos, sceneData:GetDummyPoint(3, "Q7327903_guide").rot, true, false, 3)
end

function Quest73279:OnSubFinish7327904(arg1)
    print("OnSubFinish7327904")
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20937Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20938Data.alias, 3)
    this:ActorDestroy("Q7327904_EnterTrigger")
end

function Quest73279:OnSubStart7327905(arg1)
    print("OnSubStart7327905")
    this:GetQuestNpcActor(npcs.Npc20842Data.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
end

function Quest73279:OnSubFinish7327905(arg1)
    print("OnSubFinish7327905")
    this:NarratorOnlyTaskByData(datas.NarratorWithId7327905)
end

function Quest73279:OnSubStart7327906(arg1)
    print("OnSubStart7327906")
    this:GetQuestNpcActor(npcs.Npc20842Data.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
end

function Quest73279:OnSubFinish7327906(arg1)
    print("OnSubFinish7327906")
    this:ClearNarratorTask()
    this:CallDelay(0.5, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId7327907)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc20842Data.alias, 3)
end

function Quest73279:OnSubStart7327907(arg1)
    print("OnSubStart7327907")
end

function Quest73279:OnSubFinish7327907(arg1)
    print("OnSubFinish7327907")
    this:ClearNarratorTask()
end

function Quest73279:OnSubStart7327908(arg1)
    print("OnSubStart7327908")
end

function Quest73279:OnSubFinish7327908(arg1)
    print("OnSubFinish7327908")
end

return Quest73279
