require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73101 = class("Quest73101", QuestActorProxy)
Quest73101.defaultAlias = "Quest73101"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73101:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73101:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7310109"] = self.OnSubStart7310109,
        ["7310101"] = self.OnSubStart7310101,
        ["7310102"] = self.OnSubStart7310102,
        ["7310103"] = self.OnSubStart7310103,
        ["7310104"] = self.OnSubStart7310104,
        ["7310105"] = self.OnSubStart7310105,
        ["7310106"] = self.OnSubStart7310106,
        ["7310107"] = self.OnSubStart7310107,
        ["7310108"] = self.OnSubStart7310108,
        ["7310110"] = self.OnSubStart7310110,
        ["7310111"] = self.OnSubStart7310111,
        ["7310112"] = self.OnSubStart7310112,
        ["7310113"] = self.OnSubStart7310113,
        ["7310114"] = self.OnSubStart7310114,
        ["7310115"] = self.OnSubStart7310115,
        ["7310116"] = self.OnSubStart7310116,
        ["7310117"] = self.OnSubStart7310117,
        ["7310118"] = self.OnSubStart7310118
    }
end

function Quest73101:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7310109"] = self.OnSubFinish7310109,
        ["7310101"] = self.OnSubFinish7310101,
        ["7310102"] = self.OnSubFinish7310102,
        ["7310103"] = self.OnSubFinish7310103,
        ["7310104"] = self.OnSubFinish7310104,
        ["7310105"] = self.OnSubFinish7310105,
        ["7310106"] = self.OnSubFinish7310106,
        ["7310107"] = self.OnSubFinish7310107,
        ["7310108"] = self.OnSubFinish7310108,
        ["7310110"] = self.OnSubFinish7310110,
        ["7310111"] = self.OnSubFinish7310111,
        ["7310112"] = self.OnSubFinish7310112,
        ["7310113"] = self.OnSubFinish7310113,
        ["7310114"] = self.OnSubFinish7310114,
        ["7310115"] = self.OnSubFinish7310115,
        ["7310116"] = self.OnSubFinish7310116,
        ["7310117"] = self.OnSubFinish7310117,
        ["7310118"] = self.OnSubFinish7310118
    }
end

function Quest73101:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73101:Start()
    print("Start")
end

function Quest73101:OnDestroy()
    print("OnDestroy")
end

function Quest73101:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73101:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73101:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73101:OnSubStart7310109(arg1)
    print("OnSubStart7310109")
end

function Quest73101:OnSubFinish7310109(arg1)
    print("OnSubFinish7310109")
end

function Quest73101:OnSubStart7310101(arg1)
    print("OnSubStart7310101")
end

function Quest73101:OnSubFinish7310101(arg1)
    print("OnSubFinish7310101")
    self:TransmitPlayerByQuestId(7310102, 1)
end

function Quest73101:OnSubStart7310102(arg1)
    print("OnSubStart7310102")
end

function Quest73101:OnSubFinish7310102(arg1)
    print("OnSubFinish7310102")
end

function Quest73101:OnSubStart7310103(arg1)
    print("OnSubStart7310103")
end

function Quest73101:OnSubFinish7310103(arg1)
    print("OnSubFinish7310103")
    self:TransmitPlayerByQuestId(7310104, 2)
end

function Quest73101:OnSubStart7310104(arg1)
    print("OnSubStart7310104")
end

function Quest73101:OnSubFinish7310104(arg1)
    print("OnSubFinish7310104")
end

function Quest73101:OnSubStart7310105(arg1)
    print("OnSubStart7310105")
end

function Quest73101:OnSubFinish7310105(arg1)
    print("OnSubFinish7310105")
    self:TransmitPlayerByQuestId(7310106, 3)
end

function Quest73101:OnSubStart7310106(arg1)
    print("OnSubStart7310106")
end

function Quest73101:OnSubFinish7310106(arg1)
    print("OnSubFinish7310106")
end

function Quest73101:OnSubStart7310107(arg1)
    print("OnSubStart7310107")
end

function Quest73101:OnSubFinish7310107(arg1)
    print("OnSubFinish7310107")
    self:TransmitPlayerByQuestId(7310108, 4)
end

function Quest73101:OnSubStart7310108(arg1)
    print("OnSubStart7310108")
end

function Quest73101:OnSubFinish7310108(arg1)
    print("OnSubFinish7310108")
end

function Quest73101:OnSubStart7310110(arg1)
    print("OnSubStart7310110")
end

function Quest73101:OnSubFinish7310110(arg1)
    print("OnSubFinish7310110")
end

function Quest73101:OnSubStart7310111(arg1)
    print("OnSubStart7310111")
end

function Quest73101:OnSubFinish7310111(arg1)
    print("OnSubFinish7310111")
    self:TransmitPlayerByQuestId(7310112, 5)
end

function Quest73101:OnSubStart7310112(arg1)
    print("OnSubStart7310112")
end

function Quest73101:OnSubFinish7310112(arg1)
    print("OnSubFinish7310112")
end

function Quest73101:OnSubStart7310113(arg1)
    print("OnSubStart7310113")
end

function Quest73101:OnSubFinish7310113(arg1)
    print("OnSubFinish7310113")
    self:TransmitPlayerByQuestId(7310114, 6)
end

function Quest73101:OnSubStart7310114(arg1)
    print("OnSubStart7310114")
end

function Quest73101:OnSubFinish7310114(arg1)
    print("OnSubFinish7310114")
end

function Quest73101:OnSubStart7310115(arg1)
    print("OnSubStart7310115")
end

function Quest73101:OnSubFinish7310115(arg1)
    print("OnSubFinish7310115")
    self:TransmitPlayerByQuestId(7310116, 7)
end

function Quest73101:OnSubStart7310116(arg1)
    print("OnSubStart7310116")
end

function Quest73101:OnSubFinish7310116(arg1)
    print("OnSubFinish7310116")
end

function Quest73101:OnSubStart7310117(arg1)
    print("OnSubStart7310117")
end

function Quest73101:OnSubFinish7310117(arg1)
    print("OnSubFinish7310117")
    self:TransmitPlayerByQuestId(7310118, 8)
end

function Quest73101:OnSubStart7310118(arg1)
    print("OnSubStart7310118")
end

function Quest73101:OnSubFinish7310118(arg1)
    print("OnSubFinish7310118")
end

return Quest73101
