require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19012 = class("Quest19012", QuestActorProxy)
Quest19012.defaultAlias = "Quest19012"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest19012:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest19012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1901201"] = self.OnSubStart1901201,
        ["1901202"] = self.OnSubStart1901202,
        ["1901203"] = self.OnSubStart1901203,
        ["1901206"] = self.OnSubStart1901206,
        ["1901207"] = self.OnSubStart1901207,
        ["1901208"] = self.OnSubStart1901208,
        ["1901204"] = self.OnSubStart1901204,
        ["1901205"] = self.OnSubStart1901205
    }
end

function Quest19012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1901201"] = self.OnSubFinish1901201,
        ["1901202"] = self.OnSubFinish1901202,
        ["1901203"] = self.OnSubFinish1901203,
        ["1901206"] = self.OnSubFinish1901206,
        ["1901207"] = self.OnSubFinish1901207,
        ["1901208"] = self.OnSubFinish1901208,
        ["1901204"] = self.OnSubFinish1901204,
        ["1901205"] = self.OnSubFinish1901205
    }
end

function Quest19012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1901201"] = self.OnSubFailed1901201,
        ["1901202"] = self.OnSubFailed1901202,
        ["1901203"] = self.OnSubFailed1901203,
        ["1901206"] = self.OnSubFailed1901206,
        ["1901207"] = self.OnSubFailed1901207,
        ["1901208"] = self.OnSubFailed1901208,
        ["1901204"] = self.OnSubFailed1901204,
        ["1901205"] = self.OnSubFailed1901205
    }
end

function Quest19012:Start()
    print("Start")
end

function Quest19012:OnDestroy()
    print("OnDestroy")
end

function Quest19012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19012:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc12170Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3106Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    actorMgr:DestroyEntityActor("Q19012Trigger_linshi", 3, false)
end

function Quest19012:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest19012:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1901203 then
        print("In_________1901203")
        self:UnSpawn(gadgets.Gadget70710519Data.alias)
    elseif arg1 == 19012031 then
        print("In_________19012031")
        self:UnSpawn(gadgets.Gadget70710432Data.alias)
    elseif arg1 == 1901205 then
        print("In_________1901205")
        self:UnSpawn(gadgets.Gadget70710519Data.alias)
    elseif arg1 == 19012051 then
        print("In_________19012051\226\128\148\226\128\148\229\188\128\229\156\186\229\136\155\229\187\186\230\156\168\230\161\182")
        self:UnSpawn(gadgets.Gadget70710519Data.alias)
        self:SpawnGadgetById(1901205, gadgets.Gadget70710519Data.id, 1)
    end
end

function Quest19012:OnSubStart1901201(arg1)
    print("OnSubStart1901201")
    self:CreateQuestNpc(arg1, npcs.Npc12170Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901201)
end

function Quest19012:OnSubFinish1901201(arg1)
    print("OnSubFinish1901201")
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
end

function Quest19012:OnSubFailed1901201(arg1)
    print("OnSubFailed1901201")
end

function Quest19012:OnSubStart1901202(arg1)
    print("OnSubStart1901202")
    self:CreateQuestNpc(arg1, npcs.Npc12170Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901202)
end

function Quest19012:OnSubFinish1901202(arg1)
    print("OnSubFinish1901202")
    self:SafeDestroyQuestNpc(npcs.Npc12170Data.alias, 3)
end

function Quest19012:OnSubFailed1901202(arg1)
    print("OnSubFailed1901202")
end

function Quest19012:OnSubStart1901203(arg1)
    print("OnSubStart1901203")
    self:CreateQuestNpc(arg1, npcs.Coop_SayuData.id, 1)
    self:UnSpawn(gadgets.Gadget70710519Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710519Data.id, 1, 0)
    self:UnSpawn(gadgets.Gadget70710432Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710432Data.id, 2, 0)
    self:GetQuestNpcActor(npcs.Coop_SayuData.alias):HideSelf()
end

function Quest19012:OnSubFinish1901203(arg1)
    print("OnSubFinish1901203")
    self:UnSpawn(gadgets.Gadget70710519Data.alias)
    self:UnSpawn(gadgets.Gadget70710432Data.alias)
end

function Quest19012:OnSubFailed1901203(arg1)
    print("OnSubFailed1901203")
end

function Quest19012:OnSubStart1901206(arg1)
    print("OnSubStart1901206")
end

function Quest19012:OnSubFinish1901206(arg1)
    print("OnSubFinish1901206")
end

function Quest19012:OnSubFailed1901206(arg1)
    print("OnSubFailed1901206")
end

function Quest19012:OnSubStart1901207(arg1)
    print("OnSubStart1901207")
end

function Quest19012:OnSubFinish1901207(arg1)
    print("OnSubFinish1901207")
end

function Quest19012:OnSubFailed1901207(arg1)
    print("OnSubFailed1901207")
end

function Quest19012:OnSubStart1901208(arg1)
    print("OnSubStart1901208")
end

function Quest19012:OnSubFinish1901208(arg1)
    print("OnSubFinish1901208")
end

function Quest19012:OnSubFailed1901208(arg1)
    print("OnSubFailed1901208")
end

function Quest19012:OnSubStart1901204(arg1)
    print("OnSubStart1901204")
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901204)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Coop_SayuData.id, 1, npcs.Coop_SayuData.alias)
end

function Quest19012:OnSubFinish1901204(arg1)
    print("OnSubFinish1901204")
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
end

function Quest19012:OnSubFailed1901204(arg1)
    print("OnSubFailed1901204")
end

function Quest19012:OnSubStart1901205(arg1)
    print("OnSubStart1901205")
    self:CreateQuestNpc(arg1, npcs.Npc3106Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901205)
end

function Quest19012:OnSubFinish1901205(arg1)
    print("OnSubFinish1901205")
    self:SafeDestroyQuestNpc(npcs.Npc3106Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    self:UnSpawn(gadgets.Gadget70710519Data.alias)
end

function Quest19012:OnSubFailed1901205(arg1)
    print("OnSubFailed1901205")
end

return Quest19012
