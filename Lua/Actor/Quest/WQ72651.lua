require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72651 = class("Quest72651", QuestActorProxy)
Quest72651.defaultAlias = "Quest72651"
local clientData
local mainID
local actorAlias
local subIDs
local gadgets

function Quest72651:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    gadgets = clientData.Gadgets
end

function Quest72651:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7265101"] = self.OnSubStart7265101, ["7265102"] = self.OnSubStart7265102}
end

function Quest72651:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7265101"] = self.OnSubFinish7265101, ["7265102"] = self.OnSubFinish7265102}
end

function Quest72651:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7265101"] = self.OnSubFailed7265101, ["7265102"] = self.OnSubFailed7265102}
end

function Quest72651:Start()
    print("Start")
end

function Quest72651:OnDestroy()
    print("OnDestroy")
end

function Quest72651:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72651:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72651:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72651:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("invoke triggered")
        self:UnSpawn(gadgets.Gadget71700179Data.alias)
    elseif arg1 == 2 then
    end
end

function Quest72651:OnSubStart7265101(arg1)
    print("OnSubStart7265101")
    self:FinishQuestID(false, 7265101)
end

function Quest72651:OnSubFinish7265101(arg1)
    print("OnSubFinish7265101")
end

function Quest72651:OnSubFailed7265101(arg1)
    print("OnSubFailed7265101")
end

function Quest72651:OnSubStart7265102(arg1)
    print("OnSubStart7265102")
    self:UnSpawn(gadgets.Gadget71700179Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget71700179Data.id, 1, 0)
end

function Quest72651:OnSubFinish7265102(arg1)
    print("OnSubFinish7265102")
    self:ActionSafeCall(function(arg1)
        arg1:ShowTutorialDialog(827)
    end)
end

function Quest72651:OnSubFailed7265102(arg1)
    print("OnSubFailed7265102")
end

return Quest72651
