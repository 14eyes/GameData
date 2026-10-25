require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70813 = class("Quest70813", QuestActorProxy)
Quest70813.defaultAlias = "Quest70813"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70813:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70813:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7081301"] = self.OnSubStart7081301,
        ["7081302"] = self.OnSubStart7081302,
        ["7081303"] = self.OnSubStart7081303,
        ["7081304"] = self.OnSubStart7081304
    }
end

function Quest70813:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7081301"] = self.OnSubFinish7081301,
        ["7081302"] = self.OnSubFinish7081302,
        ["7081303"] = self.OnSubFinish7081303,
        ["7081304"] = self.OnSubFinish7081304
    }
end

function Quest70813:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7081301"] = self.OnSubFailed7081301,
        ["7081302"] = self.OnSubFailed7081302,
        ["7081303"] = self.OnSubFailed7081303,
        ["7081304"] = self.OnSubFailed7081304
    }
end

function Quest70813:Start()
    print("Start")
end

function Quest70813:OnDestroy()
    print("OnDestroy")
end

function Quest70813:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 2, 0.5, self.ClearALL, nil, nil, "")
end

function Quest70813:OnMainFailed(arg1)
    print("OnMainFailed")
    self:NotifyTo(npcs.Npc1409Data.alias, 0, true)
end

function Quest70813:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo(npcs.Npc1409Data.alias, 0, true)
end

function Quest70813:ClearALL()
    print("ClearALL")
    self:NotifyTo(npcs.Npc1409Data.alias, 0, true)
end

function Quest70813:OnSubStart7081301(arg1)
    print("OnSubStart7081301")
    self:NotifyTo(npcs.Npc1409Data.alias, 2, true)
end

function Quest70813:OnSubFinish7081301(arg1)
    print("OnSubFinish7081301")
    self:NotifyTo(npcs.Npc1409Data.alias, 2, true)
end

function Quest70813:OnSubFailed7081301(arg1)
    print("OnSubFailed7081301")
end

function Quest70813:OnSubStart7081302(arg1)
    print("OnSubStart7081302")
    self:NotifyTo(npcs.Npc1409Data.alias, 2, true)
end

function Quest70813:OnSubFinish7081302(arg1)
    print("OnSubFinish7081302")
end

function Quest70813:OnSubFailed7081302(arg1)
    print("OnSubFailed7081302")
end

function Quest70813:OnSubStart7081303(arg1)
    print("OnSubStart7081303")
    self:NotifyTo(npcs.Npc1409Data.alias, 2, true)
end

function Quest70813:OnSubFinish7081303(arg1)
    print("OnSubFinish7081303")
end

function Quest70813:OnSubFailed7081303(arg1)
    print("OnSubFailed7081303")
end

function Quest70813:OnSubStart7081304(arg1)
    print("OnSubStart7081304")
    self:NotifyTo(npcs.Npc1409Data.alias, 2, true)
end

function Quest70813:OnSubFinish7081304(arg1)
    print("OnSubFinish7081304")
end

function Quest70813:OnSubFailed7081304(arg1)
    print("OnSubFailed7081304")
end

return Quest70813
