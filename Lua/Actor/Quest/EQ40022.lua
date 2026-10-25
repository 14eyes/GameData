require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40022 = class("Quest40022", QuestActorProxy)
Quest40022.defaultAlias = "Quest40022"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets

function Quest40022:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
end

function Quest40022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4002209"] = self.OnSubStart4002209,
        ["4002201"] = self.OnSubStart4002201,
        ["4002202"] = self.OnSubStart4002202,
        ["4002211"] = self.OnSubStart4002211,
        ["4002212"] = self.OnSubStart4002212,
        ["4002205"] = self.OnSubStart4002205,
        ["4002203"] = self.OnSubStart4002203,
        ["4002210"] = self.OnSubStart4002210,
        ["4002204"] = self.OnSubStart4002204,
        ["4002207"] = self.OnSubStart4002207,
        ["4002206"] = self.OnSubStart4002206,
        ["4002208"] = self.OnSubStart4002208
    }
end

function Quest40022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4002209"] = self.OnSubFinish4002209,
        ["4002201"] = self.OnSubFinish4002201,
        ["4002202"] = self.OnSubFinish4002202,
        ["4002211"] = self.OnSubFinish4002211,
        ["4002212"] = self.OnSubFinish4002212,
        ["4002205"] = self.OnSubFinish4002205,
        ["4002203"] = self.OnSubFinish4002203,
        ["4002210"] = self.OnSubFinish4002210,
        ["4002204"] = self.OnSubFinish4002204,
        ["4002207"] = self.OnSubFinish4002207,
        ["4002206"] = self.OnSubFinish4002206,
        ["4002208"] = self.OnSubFinish4002208
    }
end

function Quest40022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4002209"] = self.OnSubFailed4002209,
        ["4002201"] = self.OnSubFailed4002201,
        ["4002202"] = self.OnSubFailed4002202,
        ["4002211"] = self.OnSubFailed4002211,
        ["4002212"] = self.OnSubFailed4002212,
        ["4002205"] = self.OnSubFailed4002205,
        ["4002203"] = self.OnSubFailed4002203,
        ["4002210"] = self.OnSubFailed4002210,
        ["4002204"] = self.OnSubFailed4002204,
        ["4002207"] = self.OnSubFailed4002207,
        ["4002206"] = self.OnSubFailed4002206,
        ["4002208"] = self.OnSubFailed4002208
    }
end

function Quest40022:Start()
    print("Start")
end

function Quest40022:OnDestroy()
    print("OnDestroy")
end

function Quest40022:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40022:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40022:OnMainCanceled(arg1)
    self:DestroyQuestNpcActor(npcs.Npc1042Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc30067Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10200Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710489Data.alias)
    self:UnSpawn(gadgets.Gadget70710524Data.alias)
end

function Quest40022:createxinyan()
    print("createxinyan")
    self:CreateQuestNpcById(4002208, npcs.Npc1042Data.id, 0)
    self:RequestInteraction(npcs.Npc1042Data.alias)
end

function Quest40022:destroyxinyan()
    print("destroyxinyan")
    self:GetQuestNpcActor(npcs.Npc1042Data.alias):DoFreeStateTrigger()
    self:DestroyQuestNpcActorByAlias(npcs.Npc1042Data.alias, false)
end

function Quest40022:createshidajiang1()
    print("createshidajiang1")
    self:CreateQuestNpcById(4002211, npcs.Npc10200Data.id, 0)
    self:RequestInteraction(npcs.Npc10200Data.alias)
    self:UnSpawn(gadgets.Gadget70710524Data.alias)
    self:SpawnGadgetById(4002211, gadgets.Gadget70710524Data.id, 1)
end

function Quest40022:createshidajiang2()
    print("createshidajiang2")
    self:CreateQuestNpcById(4002206, npcs.Npc1042Data.id, 0)
    self:CreateQuestNpcById(4002206, npcs.Npc30067Data.id, 0)
    self:RequestInteraction(npcs.Npc30067Data.alias)
end

function Quest40022:destroygongzi()
    print("destroygongzi")
    self:DestroyQuestNpcActorByAlias(npcs.Npc10200Data.alias, false)
end

function Quest40022:OnSubStart4002209(arg1)
    print("OnSubStart4002209")
end

function Quest40022:OnSubFinish4002209(arg1)
    print("OnSubFinish4002209")
end

function Quest40022:OnSubFailed4002209(arg1)
    print("OnSubFailed4002209")
end

function Quest40022:OnSubStart4002201(arg1)
    print("OnSubStart4002201")
    self:CreateQuestNpc(arg1, npcs.Npc1042Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc1042Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest40022:OnSubFinish4002201(arg1)
    print("OnSubFinish4002201")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyxinyan, nil, nil, "", false, true)
end

function Quest40022:OnSubFailed4002201(arg1)
    print("OnSubFailed4002201")
end

function Quest40022:OnSubStart4002202(arg1)
    print("OnSubStart4002202")
end

function Quest40022:OnSubFinish4002202(arg1)
    print("OnSubFinish4002202")
end

function Quest40022:OnSubFailed4002202(arg1)
    print("OnSubFailed4002202")
end

function Quest40022:OnSubStart4002211(arg1)
    print("OnSubStart4002211")
    self:ShowBlackScreen(0.5, 1, 0.5, self.createshidajiang1, nil, nil, "", false, true)
end

function Quest40022:OnSubFinish4002211(arg1)
    print("OnSubFinish4002211")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroygongzi, nil, nil, "", false, true)
end

function Quest40022:OnSubFailed4002211(arg1)
    print("OnSubFailed4002211")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroygongzi, nil, nil, "", false, true)
end

function Quest40022:OnSubStart4002212(arg1)
    print("OnSubStart4002212")
end

function Quest40022:OnSubFinish4002212(arg1)
    print("OnSubFinish4002212")
end

function Quest40022:OnSubFailed4002212(arg1)
    print("OnSubFailed4002212")
end

function Quest40022:OnSubStart4002205(arg1)
    print("OnSubStart4002205")
    self:UnSpawn(gadgets.Gadget70710489Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710489Data.id, 1, 0)
    self:UnSpawn(gadgets.Gadget70710524Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710524Data.id, 2, 0)
end

function Quest40022:OnSubFinish4002205(arg1)
    print("OnSubFinish4002205")
    self:UnSpawn(gadgets.Gadget70710489Data.alias)
    self:UnSpawn(gadgets.Gadget70710524Data.alias)
end

function Quest40022:OnSubFailed4002205(arg1)
    print("OnSubFailed4002205")
    self:UnSpawn(gadgets.Gadget70710489Data.alias)
    self:UnSpawn(gadgets.Gadget70710524Data.alias)
end

function Quest40022:OnSubStart4002203(arg1)
    print("OnSubStart4002203")
    self:CreateQuestNpc(arg1, npcs.Npc10200Data.id, 0)
    self:RequestInteraction(npcs.Npc10200Data.alias)
end

function Quest40022:OnSubFinish4002203(arg1)
    print("OnSubFinish4002203")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroygongzi, nil, nil, "", false, true)
end

function Quest40022:OnSubFailed4002203(arg1)
    print("OnSubFailed4002203")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroygongzi, nil, nil, "", false, true)
end

function Quest40022:OnSubStart4002210(arg1)
    print("OnSubStart4002210")
end

function Quest40022:OnSubFinish4002210(arg1)
    print("OnSubFinish4002210")
end

function Quest40022:OnSubFailed4002210(arg1)
    print("OnSubFailed4002210")
end

function Quest40022:OnSubStart4002204(arg1)
    print("OnSubStart4002204")
end

function Quest40022:OnSubFinish4002204(arg1)
    print("OnSubFinish4002204")
end

function Quest40022:OnSubFailed4002204(arg1)
    print("OnSubFailed4002204")
end

function Quest40022:OnSubStart4002207(arg1)
    print("OnSubStart4002207")
end

function Quest40022:OnSubFinish4002207(arg1)
    print("OnSubFinish4002207")
end

function Quest40022:OnSubFailed4002207(arg1)
    print("OnSubFailed4002207")
end

function Quest40022:OnSubStart4002206(arg1)
    if sceneData.currSceneID == 47003 then
        self:PlayCutsceneIndex("400220701", self.createshidajiang2, nil, nil, false)
    else
        if sceneData.currSceneID == 47006 then
            self:CreateQuestNpc(arg1, npcs.Npc1042Data.id, 0)
            self:CreateQuestNpc(arg1, npcs.Npc30067Data.id, 0)
            self:RequestInteraction(npcs.Npc30067Data.alias)
        end
    end
end

function Quest40022:OnSubFinish4002206(arg1)
    print("OnSubFinish4002206")
end

function Quest40022:OnSubFailed4002206(arg1)
    print("OnSubFailed4002206")
end

function Quest40022:OnSubStart4002208(arg1)
    print("OnSubStart4002208")
end

function Quest40022:OnSubFinish4002208(arg1)
    print("OnSubFinish4002208")
    self:DestroyQuestNpcActor(npcs.Npc30067Data.alias, 47003)
    self:DestroyQuestNpcActor(npcs.Npc1042Data.alias, 47003)
end

function Quest40022:OnSubFailed4002208(arg1)
    print("OnSubFailed4002208")
end

return Quest40022
