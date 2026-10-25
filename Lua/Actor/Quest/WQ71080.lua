require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71080 = class("Quest71080", QuestActorProxy)
Quest71080.defaultAlias = "Quest71080"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71080:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71080:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7108001"] = self.OnSubStart7108001,
        ["7108002"] = self.OnSubStart7108002,
        ["7108003"] = self.OnSubStart7108003,
        ["7108004"] = self.OnSubStart7108004,
        ["7108005"] = self.OnSubStart7108005,
        ["7108006"] = self.OnSubStart7108006,
        ["7108007"] = self.OnSubStart7108007,
        ["7108008"] = self.OnSubStart7108008,
        ["7108013"] = self.OnSubStart7108013,
        ["7108012"] = self.OnSubStart7108012,
        ["7108009"] = self.OnSubStart7108009,
        ["7108010"] = self.OnSubStart7108010,
        ["7108011"] = self.OnSubStart7108011
    }
end

function Quest71080:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7108001"] = self.OnSubFinish7108001,
        ["7108002"] = self.OnSubFinish7108002,
        ["7108003"] = self.OnSubFinish7108003,
        ["7108004"] = self.OnSubFinish7108004,
        ["7108005"] = self.OnSubFinish7108005,
        ["7108006"] = self.OnSubFinish7108006,
        ["7108007"] = self.OnSubFinish7108007,
        ["7108008"] = self.OnSubFinish7108008,
        ["7108013"] = self.OnSubFinish7108013,
        ["7108012"] = self.OnSubFinish7108012,
        ["7108009"] = self.OnSubFinish7108009,
        ["7108010"] = self.OnSubFinish7108010,
        ["7108011"] = self.OnSubFinish7108011
    }
end

function Quest71080:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

return Quest71080
