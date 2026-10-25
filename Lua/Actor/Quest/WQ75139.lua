require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75139 = class("Quest75139", QuestActorProxy)
Quest75139.defaultAlias = "Quest75139"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75139:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75139:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7513902"] = self.OnSubStart7513902,
        ["7513903"] = self.OnSubStart7513903,
        ["7513904"] = self.OnSubStart7513904
    }
end

function Quest75139:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7513902"] = self.OnSubFinish7513902,
        ["7513903"] = self.OnSubFinish7513903,
        ["7513904"] = self.OnSubFinish7513904
    }
end

function Quest75139:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75139:Start()
    print("Start")
end

function Quest75139:OnDestroy()
    print("OnDestroy")
end

function Quest75139:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75139:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75139:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75139:OnSubStart7513902(arg1)
    print("OnSubStart7513902")
    this:CreateQuestNpc(arg1, npcs.Npc13551.id, 0, false, 0)
    actorMgr:CreateActorWithPos("qwe", "Actor/Gadget/qwe", 70900002, 0, points._qwePoint_.pos, points._qwePoint_.rot, true, false, 3)
end

function Quest75139:OnSubFinish7513902(arg1)
    print("OnSubFinish7513902")
end

function Quest75139:OnSubStart7513903(arg1)
    print("OnSubStart7513903")
end

function Quest75139:OnSubFinish7513903(arg1)
    print("OnSubFinish7513903")
end

function Quest75139:OnSubStart7513904(arg1)
    print("OnSubStart7513904")
end

function Quest75139:OnSubFinish7513904(arg1)
    print("OnSubFinish7513904")
    this:SafeDestroyQuestNpc(npcs.Npc13551.alias, 3)
end

return Quest75139
