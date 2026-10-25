require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72716 = class("Quest72716", QuestActorProxy)
Quest72716.defaultAlias = "Quest72716"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72716:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72716:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7271601"] = self.OnSubStart7271601, ["7271602"] = self.OnSubStart7271602}
end

function Quest72716:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7271601"] = self.OnSubFinish7271601, ["7271602"] = self.OnSubFinish7271602}
end

function Quest72716:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7271601"] = self.OnSubFailed7271601, ["7271602"] = self.OnSubFailed7271602}
end

function Quest72716:Start()
    print("Start")
end

function Quest72716:OnDestroy()
    print("OnDestroy")
end

function Quest72716:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72716:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72716:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:LightNotifyTo(npcs.Npc3106Data.alias, 0, true)
end

function Quest72716:OnSubStart7271601(arg1)
    print("OnSubStart7271601")
    self:NotifyTo(npcs.Npc3106Data.alias, 2, true)
end

function Quest72716:OnSubFinish7271601(arg1)
    print("OnSubFinish7271601")
end

function Quest72716:OnSubFailed7271601(arg1)
    print("OnSubFailed7271601")
end

function Quest72716:OnSubStart7271602(arg1)
    print("OnSubStart7271602")
end

function Quest72716:OnSubFinish7271602(arg1)
    print("OnSubFinish7271602")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:LightNotifyTo(npcs.Npc3106Data.alias, 0, true)
    end, nil, nil, "")
end

function Quest72716:OnSubFailed7271602(arg1)
    print("OnSubFailed7271602")
end

return Quest72716
