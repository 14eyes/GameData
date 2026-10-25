require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74149 = class("Quest74149", QuestActorProxy)
Quest74149.defaultAlias = "Quest74149"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74149:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74149:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7414901"] = self.OnSubStart7414901,
        ["7414902"] = self.OnSubStart7414902,
        ["7414906"] = self.OnSubStart7414906,
        ["7414903"] = self.OnSubStart7414903,
        ["7414904"] = self.OnSubStart7414904,
        ["7414908"] = self.OnSubStart7414908,
        ["7414909"] = self.OnSubStart7414909,
        ["7414907"] = self.OnSubStart7414907,
        ["7414905"] = self.OnSubStart7414905
    }
end

function Quest74149:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7414901"] = self.OnSubFinish7414901,
        ["7414902"] = self.OnSubFinish7414902,
        ["7414906"] = self.OnSubFinish7414906,
        ["7414903"] = self.OnSubFinish7414903,
        ["7414904"] = self.OnSubFinish7414904,
        ["7414908"] = self.OnSubFinish7414908,
        ["7414909"] = self.OnSubFinish7414909,
        ["7414907"] = self.OnSubFinish7414907,
        ["7414905"] = self.OnSubFinish7414905
    }
end

function Quest74149:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74149:Start()
    print("Start")
end

function Quest74149:OnDestroy()
    print("OnDestroy")
end

function Quest74149:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74149:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74149:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74149:OnSubStart7414901(arg1)
    print("OnSubStart7414901")
    this:CreateQuestNpc(arg1, npcs.Npc21253Data.id, 0)
end

function Quest74149:OnSubFinish7414901(arg1)
    print("OnSubFinish7414901")
end

function Quest74149:OnSubStart7414902(arg1)
    print("OnSubStart7414902")
    this:CreateQuestNpc(arg1, npcs.Npc21249Data.id, 0)
end

function Quest74149:OnSubFinish7414902(arg1)
    print("OnSubFinish7414902")
end

function Quest74149:OnSubStart7414906(arg1)
    print("OnSubStart7414906")
end

function Quest74149:OnSubFinish7414906(arg1)
    print("OnSubFinish7414906")
end

function Quest74149:OnSubStart7414903(arg1)
    print("OnSubStart7414903")
end

function Quest74149:OnSubFinish7414903(arg1)
    print("OnSubFinish7414903")
end

function Quest74149:OnSubStart7414904(arg1)
    print("OnSubStart7414904")
end

function Quest74149:OnSubFinish7414904(arg1)
    print("OnSubFinish7414904")
end

function Quest74149:OnSubStart7414908(arg1)
    print("OnSubStart7414908")
end

function Quest74149:OnSubFinish7414908(arg1)
    print("OnSubFinish7414908")
end

function Quest74149:OnSubStart7414909(arg1)
    print("OnSubStart7414909")
end

function Quest74149:OnSubFinish7414909(arg1)
    print("OnSubFinish7414909")
end

function Quest74149:OnSubStart7414907(arg1)
    print("OnSubStart7414907")
end

function Quest74149:OnSubFinish7414907(arg1)
    print("OnSubFinish7414907")
end

function Quest74149:OnSubStart7414905(arg1)
    print("OnSubStart7414905")
end

function Quest74149:OnSubFinish7414905(arg1)
    print("OnSubFinish7414905")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc21249Data.alias, 3)
end

return Quest74149
