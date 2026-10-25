require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70652 = class("Quest70652", QuestActorProxy)
Quest70652.defaultAlias = "Quest70652"
local clientData
local mainID
local actorAlias
local subIDs
local gadgets

function Quest70652:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    gadgets = clientData.Gadgets
end

function Quest70652:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7065201"] = self.OnSubStart7065201}
end

function Quest70652:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7065201"] = self.OnSubFinish7065201}
end

function Quest70652:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7065201"] = self.OnSubFailed7065201}
end

function Quest70652:Start()
    print("Start")
end

function Quest70652:OnDestroy()
    print("OnDestroy")
end

function Quest70652:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70652:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70652:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70652:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("invoke triggered")
        self:UnSpawn(gadgets.Gadget70500013Data.alias)
        self:CallDelay(0.1, function(arg1)
            arg1:SpawnGadgetById(7065201, gadgets.Gadget70500013Data.id, 1)
        end)
    elseif arg1 == 2 then
    end
end

function Quest70652:OnSubStart7065201(arg1)
    print("OnSubStart7065201")
end

function Quest70652:OnSubFinish7065201(arg1)
    print("OnSubFinish7065201")
    self:ActionSafeCall(function(arg1)
        arg1:ShowTutorialDialog(802)
    end)

    self:UnSpawn(gadgets.Gadget70500013Data.alias)
end

function Quest70652:OnSubFailed7065201(arg1)
    print("OnSubFailed7065201")
end

return Quest70652
