require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74101 = class("Quest74101", QuestActorProxy)
Quest74101.defaultAlias = "Quest74101"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74101:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74101:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7410101"] = self.OnSubStart7410101,
        ["7410102"] = self.OnSubStart7410102,
        ["7410103"] = self.OnSubStart7410103,
        ["7410104"] = self.OnSubStart7410104,
        ["7410105"] = self.OnSubStart7410105,
        ["7410106"] = self.OnSubStart7410106,
        ["7410107"] = self.OnSubStart7410107,
        ["7410108"] = self.OnSubStart7410108,
        ["7410109"] = self.OnSubStart7410109,
        ["7410110"] = self.OnSubStart7410110,
        ["7410112"] = self.OnSubStart7410112,
        ["7410113"] = self.OnSubStart7410113,
        ["7410114"] = self.OnSubStart7410114,
        ["7410115"] = self.OnSubStart7410115,
        ["7410116"] = self.OnSubStart7410116,
        ["7410117"] = self.OnSubStart7410117,
        ["7410118"] = self.OnSubStart7410118,
        ["7410119"] = self.OnSubStart7410119,
        ["7410120"] = self.OnSubStart7410120,
        ["7410121"] = self.OnSubStart7410121,
        ["7410111"] = self.OnSubStart7410111,
        ["7410122"] = self.OnSubStart7410122
    }
end

function Quest74101:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7410101"] = self.OnSubFinish7410101,
        ["7410102"] = self.OnSubFinish7410102,
        ["7410103"] = self.OnSubFinish7410103,
        ["7410104"] = self.OnSubFinish7410104,
        ["7410105"] = self.OnSubFinish7410105,
        ["7410106"] = self.OnSubFinish7410106,
        ["7410107"] = self.OnSubFinish7410107,
        ["7410108"] = self.OnSubFinish7410108,
        ["7410109"] = self.OnSubFinish7410109,
        ["7410110"] = self.OnSubFinish7410110,
        ["7410112"] = self.OnSubFinish7410112,
        ["7410113"] = self.OnSubFinish7410113,
        ["7410114"] = self.OnSubFinish7410114,
        ["7410115"] = self.OnSubFinish7410115,
        ["7410116"] = self.OnSubFinish7410116,
        ["7410117"] = self.OnSubFinish7410117,
        ["7410118"] = self.OnSubFinish7410118,
        ["7410119"] = self.OnSubFinish7410119,
        ["7410120"] = self.OnSubFinish7410120,
        ["7410121"] = self.OnSubFinish7410121,
        ["7410111"] = self.OnSubFinish7410111,
        ["7410122"] = self.OnSubFinish7410122
    }
end

function Quest74101:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74101:Start()
    print("Start")
end

function Quest74101:OnDestroy()
    print("OnDestroy")
end

function Quest74101:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74101:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74101:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74101:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:TransmitPlayerUseCustomizedTplByQuestId(7410122, 1, 15)
    end
end

function Quest74101:OnSubStart7410101(arg1)
    print("OnSubStart7410101")
end

function Quest74101:OnSubFinish7410101(arg1)
    print("OnSubFinish7410101")
end

function Quest74101:OnSubStart7410102(arg1)
    print("OnSubStart7410102")
end

function Quest74101:OnSubFinish7410102(arg1)
    print("OnSubFinish7410102")
end

function Quest74101:OnSubStart7410103(arg1)
    print("OnSubStart7410103")
end

function Quest74101:OnSubFinish7410103(arg1)
    print("OnSubFinish7410103")
end

function Quest74101:OnSubStart7410104(arg1)
    print("OnSubStart7410104")
end

function Quest74101:OnSubFinish7410104(arg1)
    print("OnSubFinish7410104")
end

function Quest74101:OnSubStart7410105(arg1)
    print("OnSubStart7410105")
end

function Quest74101:OnSubFinish7410105(arg1)
    print("OnSubFinish7410105")
end

function Quest74101:OnSubStart7410106(arg1)
    print("OnSubStart7410106")
end

function Quest74101:OnSubFinish7410106(arg1)
    print("OnSubFinish7410106")
end

function Quest74101:OnSubStart7410107(arg1)
    print("OnSubStart7410107")
end

function Quest74101:OnSubFinish7410107(arg1)
    print("OnSubFinish7410107")
end

function Quest74101:OnSubStart7410108(arg1)
    print("OnSubStart7410108")
end

function Quest74101:OnSubFinish7410108(arg1)
    print("OnSubFinish7410108")
end

function Quest74101:OnSubStart7410109(arg1)
    print("OnSubStart7410109")
end

function Quest74101:OnSubFinish7410109(arg1)
    print("OnSubFinish7410109")
end

function Quest74101:OnSubStart7410110(arg1)
    print("OnSubStart7410110")
end

function Quest74101:OnSubFinish7410110(arg1)
    print("OnSubFinish7410110")
end

function Quest74101:OnSubStart7410112(arg1)
    print("OnSubStart7410112")
end

function Quest74101:OnSubFinish7410112(arg1)
    print("OnSubFinish7410112")
end

function Quest74101:OnSubStart7410113(arg1)
    print("OnSubStart7410113")
end

function Quest74101:OnSubFinish7410113(arg1)
    print("OnSubFinish7410113")
end

function Quest74101:OnSubStart7410114(arg1)
    print("OnSubStart7410114")
end

function Quest74101:OnSubFinish7410114(arg1)
    print("OnSubFinish7410114")
end

function Quest74101:OnSubStart7410115(arg1)
    print("OnSubStart7410115")
end

function Quest74101:OnSubFinish7410115(arg1)
    print("OnSubFinish7410115")
end

function Quest74101:OnSubStart7410116(arg1)
    print("OnSubStart7410116")
end

function Quest74101:OnSubFinish7410116(arg1)
    print("OnSubFinish7410116")
end

function Quest74101:OnSubStart7410117(arg1)
    print("OnSubStart7410117")
end

function Quest74101:OnSubFinish7410117(arg1)
    print("OnSubFinish7410117")
end

function Quest74101:OnSubStart7410118(arg1)
    print("OnSubStart7410118")
end

function Quest74101:OnSubFinish7410118(arg1)
    print("OnSubFinish7410118")
end

function Quest74101:OnSubStart7410119(arg1)
    print("OnSubStart7410119")
end

function Quest74101:OnSubFinish7410119(arg1)
    print("OnSubFinish7410119")
end

function Quest74101:OnSubStart7410120(arg1)
    print("OnSubStart7410120")
end

function Quest74101:OnSubFinish7410120(arg1)
    print("OnSubFinish7410120")
end

function Quest74101:OnSubStart7410121(arg1)
    print("OnSubStart7410121")
end

function Quest74101:OnSubFinish7410121(arg1)
    print("OnSubFinish7410121")
end

function Quest74101:OnSubStart7410111(arg1)
    print("OnSubStart7410111")
end

function Quest74101:OnSubFinish7410111(arg1)
    print("OnSubFinish7410111")
end

function Quest74101:OnSubStart7410122(arg1)
    print("OnSubStart7410122")
    this:CreateQuestNpc(arg1, npcs.Npc21192Data.id, 0)
end

function Quest74101:OnSubFinish7410122(arg1)
    print("OnSubFinish7410122")
    this:SafeDestroyQuestNpc(npcs.Npc21192Data.alias, 3)
end

return Quest74101
