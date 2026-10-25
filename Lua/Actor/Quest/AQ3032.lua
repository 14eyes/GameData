require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3032 = class("Quest3032", QuestActorProxy)
Quest3032.defaultAlias = "Quest3032"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3032:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3032:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["303201"] = self.OnSubStart303201,
        ["303202"] = self.OnSubStart303202,
        ["303204"] = self.OnSubStart303204,
        ["303203"] = self.OnSubStart303203,
        ["303205"] = self.OnSubStart303205
    }
end

function Quest3032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["303201"] = self.OnSubFinish303201,
        ["303202"] = self.OnSubFinish303202,
        ["303204"] = self.OnSubFinish303204,
        ["303203"] = self.OnSubFinish303203,
        ["303205"] = self.OnSubFinish303205
    }
end

function Quest3032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3032:Start()
    print("Start")
end

function Quest3032:OnDestroy()
    print("OnDestroy")
end

function Quest3032:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3032:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3032:OnSubStart303201(arg1)
    print("OnSubStart303201")
    this:CreateQuestNpc(arg1, npcs.Npc1056Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc1065Data.id, 2)
    actorMgr:CreateActorWithPos("Q303201Trigger", "Actor/Gadget/Q303201Trigger", 70900002, 0, sceneData:GetDummyPoint(1075, "Q303104_N1056").pos, sceneData:GetDummyPoint(1075, "Q303104_N1056").rot, true, false, 1075)
end

function Quest3032:OnSubFinish303201(arg1)
    print("OnSubFinish303201")
end

function Quest3032:OnSubStart303202(arg1)
    print("OnSubStart303202")
    actorMgr:CreateActorWithPos("Q303202Trigger", "Actor/Gadget/Q303202Trigger", 70900002, 0, sceneData:GetDummyPoint(1075, "Q303104_N1056").pos, sceneData:GetDummyPoint(1075, "Q303104_N1056").rot, true, false, 1075)
end

function Quest3032:OnSubFinish303202(arg1)
    print("OnSubFinish303202")
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest3032:OnSubStart303204(arg1)
    print("OnSubStart303204")
    actorMgr:CreateActorWithPos("Q303204Trigger", "Actor/Gadget/Q303204Trigger", 70900002, 0, sceneData:GetDummyPoint(1075, "Q303104_N1056").pos, sceneData:GetDummyPoint(1075, "Q303104_N1056").rot, true, false, 1075)
end

function Quest3032:OnSubFinish303204(arg1)
    print("OnSubFinish303204")
    this:TransmitPlayerWithDialogTextByQuestId(303204, 1, datas.DialogsId, 1)
end

function Quest3032:OnSubStart303203(arg1)
    print("OnSubStart303203")
    this:CreateQuestNpc(arg1, npcs.Npc12991Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc12992Data.id, 4)
    actorMgr:CreateActorWithPos("Q303203TriggerWufeng", "Actor/Gadget/Q303203TriggerWufeng", 70900002, 0, sceneData:GetDummyPoint(3, "Q30320_guide").pos, sceneData:GetDummyPoint(3, "Q30320_guide").rot, true, false, 3)
end

function Quest3032:OnSubFinish303203(arg1)
    print("OnSubFinish303203")
end

function Quest3032:OnSubStart303205(arg1)
    print("OnSubStart303205")
    actorMgr:CreateActorWithPos("Q303205Trigger", "Actor/Gadget/Q303205Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q303205_guide").pos, sceneData:GetDummyPoint(3, "Q303205_guide").rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc12991Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc12992Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc12992Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc12991Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12992Data.alias):DisableInteeHeadCtrl(true)
end

function Quest3032:OnSubFinish303205(arg1)
    print("OnSubFinish303205")
    this:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 1075)
    this:SafeDestroyQuestNpc(npcs.Npc1065Data.alias, 1075)
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12991Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12992Data.alias, 3)
end

return Quest3032
