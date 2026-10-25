require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23004 = class("Quest23004", QuestActorProxy)
Quest23004.defaultAlias = "Quest23004"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23004:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2300401"] = self.OnSubStart2300401,
        ["2300402"] = self.OnSubStart2300402,
        ["2300403"] = self.OnSubStart2300403,
        ["2300404"] = self.OnSubStart2300404,
        ["2300414"] = self.OnSubStart2300414,
        ["2300406"] = self.OnSubStart2300406,
        ["2300407"] = self.OnSubStart2300407,
        ["2300408"] = self.OnSubStart2300408,
        ["2300409"] = self.OnSubStart2300409,
        ["2300410"] = self.OnSubStart2300410,
        ["2300411"] = self.OnSubStart2300411,
        ["2300412"] = self.OnSubStart2300412,
        ["2300413"] = self.OnSubStart2300413,
        ["2300416"] = self.OnSubStart2300416,
        ["2300417"] = self.OnSubStart2300417,
        ["2300418"] = self.OnSubStart2300418,
        ["2300419"] = self.OnSubStart2300419,
        ["2300420"] = self.OnSubStart2300420,
        ["2300421"] = self.OnSubStart2300421,
        ["2300422"] = self.OnSubStart2300422,
        ["2300423"] = self.OnSubStart2300423,
        ["2300424"] = self.OnSubStart2300424,
        ["2300425"] = self.OnSubStart2300425,
        ["2300426"] = self.OnSubStart2300426,
        ["2300427"] = self.OnSubStart2300427,
        ["2300428"] = self.OnSubStart2300428,
        ["2300429"] = self.OnSubStart2300429,
        ["2300430"] = self.OnSubStart2300430
    }
end

function Quest23004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2300401"] = self.OnSubFinish2300401,
        ["2300402"] = self.OnSubFinish2300402,
        ["2300403"] = self.OnSubFinish2300403,
        ["2300404"] = self.OnSubFinish2300404,
        ["2300414"] = self.OnSubFinish2300414,
        ["2300406"] = self.OnSubFinish2300406,
        ["2300407"] = self.OnSubFinish2300407,
        ["2300408"] = self.OnSubFinish2300408,
        ["2300409"] = self.OnSubFinish2300409,
        ["2300410"] = self.OnSubFinish2300410,
        ["2300411"] = self.OnSubFinish2300411,
        ["2300412"] = self.OnSubFinish2300412,
        ["2300413"] = self.OnSubFinish2300413,
        ["2300416"] = self.OnSubFinish2300416,
        ["2300417"] = self.OnSubFinish2300417,
        ["2300418"] = self.OnSubFinish2300418,
        ["2300419"] = self.OnSubFinish2300419,
        ["2300420"] = self.OnSubFinish2300420,
        ["2300421"] = self.OnSubFinish2300421,
        ["2300422"] = self.OnSubFinish2300422,
        ["2300423"] = self.OnSubFinish2300423,
        ["2300424"] = self.OnSubFinish2300424,
        ["2300425"] = self.OnSubFinish2300425,
        ["2300426"] = self.OnSubFinish2300426,
        ["2300427"] = self.OnSubFinish2300427,
        ["2300428"] = self.OnSubFinish2300428,
        ["2300429"] = self.OnSubFinish2300429,
        ["2300430"] = self.OnSubFinish2300430
    }
end

function Quest23004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23004:Start()
    print("Start")
end

function Quest23004:OnDestroy()
    print("OnDestroy")
end

function Quest23004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23004:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4171Data.alias, 3)
    actorMgr:DestroyEntityActor("Q2300402Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2300405Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2300407Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2300409Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2300411Trigger", 3, false)
end

function Quest23004:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23004:OnSubStart2300401(arg1)
    print("OnSubStart2300401")
    self:CreateQuestNpc(arg1, npcs.Npc4171Data.id, 1)
end

function Quest23004:OnSubFinish2300401(arg1)
    print("OnSubFinish2300401")
end

function Quest23004:OnSubStart2300402(arg1)
    print("OnSubStart2300402")
    actorMgr:CreateActorWithPos("Q2300402Trigger", "Actor/Gadget/Q2300402Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2300402_guide").pos, sceneData:GetDummyPoint(3, "Q2300402_guide").rot, true, false, 3)
end

function Quest23004:OnSubFinish2300402(arg1)
    print("OnSubFinish2300402")
end

function Quest23004:OnSubStart2300403(arg1)
    print("OnSubStart2300403")
end

function Quest23004:OnSubFinish2300403(arg1)
    print("OnSubFinish2300403")
end

function Quest23004:OnSubStart2300404(arg1)
    print("OnSubStart2300404")
end

function Quest23004:OnSubFinish2300404(arg1)
    print("OnSubFinish2300404")
end

function Quest23004:OnSubStart2300414(arg1)
    print("OnSubStart2300414")
    actorMgr:CreateActorWithPos("Q2300405Trigger", "Actor/Gadget/Q2300405Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2300405_guide").pos, sceneData:GetDummyPoint(3, "Q2300405_guide").rot, true, false, 3)
end

function Quest23004:OnSubFinish2300414(arg1)
    print("OnSubFinish2300414")
end

function Quest23004:OnSubStart2300406(arg1)
    print("OnSubStart2300406")
end

function Quest23004:OnSubFinish2300406(arg1)
    print("OnSubFinish2300406")
end

function Quest23004:OnSubStart2300407(arg1)
    print("OnSubStart2300407")
    actorMgr:CreateActorWithPos("Q2300407Trigger", "Actor/Gadget/Q2300407Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2300407_guide").pos, sceneData:GetDummyPoint(3, "Q2300407_guide").rot, true, false, 3)
end

function Quest23004:OnSubFinish2300407(arg1)
    print("OnSubFinish2300407")
end

function Quest23004:OnSubStart2300408(arg1)
    print("OnSubStart2300408")
end

function Quest23004:OnSubFinish2300408(arg1)
    print("OnSubFinish2300408")
end

function Quest23004:OnSubStart2300409(arg1)
    print("OnSubStart2300409")
    actorMgr:CreateActorWithPos("Q2300409Trigger", "Actor/Gadget/Q2300409Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2300409_guide").pos, sceneData:GetDummyPoint(3, "Q2300409_guide").rot, true, false, 3)
end

function Quest23004:OnSubFinish2300409(arg1)
    print("OnSubFinish2300409")
end

function Quest23004:OnSubStart2300410(arg1)
    print("OnSubStart2300410")
end

function Quest23004:OnSubFinish2300410(arg1)
    print("OnSubFinish2300410")
end

function Quest23004:OnSubStart2300411(arg1)
    print("OnSubStart2300411")
    actorMgr:CreateActorWithPos("Q2300411Trigger", "Actor/Gadget/Q2300411Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2300411_guide").pos, sceneData:GetDummyPoint(3, "Q2300411_guide").rot, true, false, 3)
end

function Quest23004:OnSubFinish2300411(arg1)
    print("OnSubFinish2300411")
end

function Quest23004:OnSubStart2300412(arg1)
    print("OnSubStart2300412")
end

function Quest23004:OnSubFinish2300412(arg1)
    print("OnSubFinish2300412")
end

function Quest23004:OnSubStart2300413(arg1)
    print("OnSubStart2300413")
end

function Quest23004:OnSubFinish2300413(arg1)
    print("OnSubFinish2300413")
end

function Quest23004:OnSubStart2300416(arg1)
    print("OnSubStart2300416")
end

function Quest23004:OnSubFinish2300416(arg1)
    print("OnSubFinish2300416")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4171Data.alias)
end

function Quest23004:OnSubStart2300417(arg1)
    print("OnSubStart2300417")
    self:CreateQuestNpc(arg1, npcs.Npc4171Data.id, 1)
    self:NarratorOnlyTask(datas.NarratorTable06, nil, "")
    actorUtils.FinishQuestID(false, 2300417)
end

function Quest23004:OnSubFinish2300417(arg1)
    print("OnSubFinish2300417")
end

function Quest23004:OnSubStart2300418(arg1)
    print("OnSubStart2300418")
end

function Quest23004:OnSubFinish2300418(arg1)
    print("OnSubFinish2300418")
    self:NarratorOnlyTask(datas.NarratorTable09, nil, "")
end

function Quest23004:OnSubStart2300419(arg1)
    print("OnSubStart2300419")
end

function Quest23004:OnSubFinish2300419(arg1)
    print("OnSubFinish2300419")
end

function Quest23004:OnSubStart2300420(arg1)
    print("OnSubStart2300420")
end

function Quest23004:OnSubFinish2300420(arg1)
    print("OnSubFinish2300420")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4171Data.alias)
end

function Quest23004:OnSubStart2300421(arg1)
    print("OnSubStart2300421")
    self:CreateQuestNpc(arg1, npcs.Npc4171Data.id, 1)
    actorUtils.FinishQuestID(false, 2300421)
end

function Quest23004:OnSubFinish2300421(arg1)
    print("OnSubFinish2300421")
end

function Quest23004:OnSubStart2300422(arg1)
    print("OnSubStart2300422")
end

function Quest23004:OnSubFinish2300422(arg1)
    print("OnSubFinish2300422")
    self:NarratorOnlyTask(datas.NarratorTable07, nil, "")
end

function Quest23004:OnSubStart2300423(arg1)
    print("OnSubStart2300423")
end

function Quest23004:OnSubFinish2300423(arg1)
    print("OnSubFinish2300423")
end

function Quest23004:OnSubStart2300424(arg1)
    print("OnSubStart2300424")
end

function Quest23004:OnSubFinish2300424(arg1)
    print("OnSubFinish2300424")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4171Data.alias)
end

function Quest23004:OnSubStart2300425(arg1)
    print("OnSubStart2300425")
    self:CreateQuestNpc(arg1, npcs.Npc4171Data.id, 1)
    self:NarratorOnlyTask(datas.NarratorTable08, nil, "")
    actorUtils.FinishQuestID(false, 2300425)
end

function Quest23004:OnSubFinish2300425(arg1)
    print("OnSubFinish2300425")
end

function Quest23004:OnSubStart2300426(arg1)
    print("OnSubStart2300426")
end

function Quest23004:OnSubFinish2300426(arg1)
    print("OnSubFinish2300426")
end

function Quest23004:OnSubStart2300427(arg1)
    print("OnSubStart2300427")
end

function Quest23004:OnSubFinish2300427(arg1)
    print("OnSubFinish2300427")
end

function Quest23004:OnSubStart2300428(arg1)
    print("OnSubStart2300428")
end

function Quest23004:OnSubFinish2300428(arg1)
    print("OnSubFinish2300428")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4171Data.alias)
end

function Quest23004:OnSubStart2300429(arg1)
    print("OnSubStart2300429")
    self:CreateQuestNpc(arg1, npcs.Npc4171Data.id, 1)
end

function Quest23004:OnSubFinish2300429(arg1)
    print("OnSubFinish2300429")
end

function Quest23004:OnSubStart2300430(arg1)
    print("OnSubStart2300430")
end

function Quest23004:OnSubFinish2300430(arg1)
    print("OnSubFinish2300430")
end

return Quest23004
