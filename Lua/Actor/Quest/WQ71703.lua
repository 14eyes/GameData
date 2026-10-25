require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71703 = class("Quest71703", QuestActorProxy)
Quest71703.defaultAlias = "Quest71703"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71703:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71703:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7170301"] = self.OnSubStart7170301, ["7170302"] = self.OnSubStart7170302}
end

function Quest71703:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7170301"] = self.OnSubFinish7170301, ["7170302"] = self.OnSubFinish7170302}
end

function Quest71703:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7170301"] = self.OnSubFailed7170301, ["7170302"] = self.OnSubFailed7170302}
end

function Quest71703:Start()
    print("Start")
end

function Quest71703:OnDestroy()
    print("OnDestroy")
end

function Quest71703:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71703:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71703:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2103", 0, true)
end

function Quest71703:OnSubStart7170301(arg1)
    print("OnSubStart7170301")
    self:NotifyTo("Npc2103", 2, true)
end

function Quest71703:OnSubFinish7170301(arg1)
    print("OnSubFinish7170301")
end

function Quest71703:OnSubFailed7170301(arg1)
    print("OnSubFailed7170301")
end

function Quest71703:OnSubStart7170302(arg1)
    print("OnSubStart7170302")
    self:NotifyTo("Npc2103", 2, true)
end

function Quest71703:OnSubFinish7170302(arg1)
    print("OnSubFinish7170302")
    self:NotifyTo("Npc2103", 0, true)
end

function Quest71703:OnSubFailed7170302(arg1)
    print("OnSubFailed7170302")
end

return Quest71703
