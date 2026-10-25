require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21034 = class("Quest21034", QuestActorProxy)
Quest21034.defaultAlias = "Quest21034"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest21034:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest21034:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2103401"] = self.OnSubStart2103401,
        ["2103406"] = self.OnSubStart2103406,
        ["2103407"] = self.OnSubStart2103407,
        ["2103402"] = self.OnSubStart2103402,
        ["2103403"] = self.OnSubStart2103403,
        ["2103404"] = self.OnSubStart2103404,
        ["2103405"] = self.OnSubStart2103405
    }
end

function Quest21034:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2103401"] = self.OnSubFinish2103401,
        ["2103406"] = self.OnSubFinish2103406,
        ["2103407"] = self.OnSubFinish2103407,
        ["2103402"] = self.OnSubFinish2103402,
        ["2103403"] = self.OnSubFinish2103403,
        ["2103404"] = self.OnSubFinish2103404,
        ["2103405"] = self.OnSubFinish2103405
    }
end

function Quest21034:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest21034:Start()
    print("Start")
end

function Quest21034:OnDestroy()
    print("OnDestroy")
end

function Quest21034:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest21034:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest21034:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc2016Data.alias, 3)
    this:UnCallFunc(self.OnCallDelay2103403)
    this:UnCallFunc(self.freestyle)
    this:UnCallFunc(self.OnCallDelay2103402)
end

function Quest21034:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest21034:OnCallDelay2103403()
    print("OnCallDelay2103403")
    actorMgr:GetActor("21034"):CreateQuestNpcById(2103403, npcs.Npc2016Data.id, 0)
end

function Quest21034:OnCallDelay2103402()
    print("OnCallDelay2103402")
    actorMgr:GetActor("21034"):CreateQuestNpcById(2103402, npcs.Npc2016Data.id, 0)
end

function Quest21034:freestyle()
    print("freestyle")
    this:GetQuestNpcActor(npcs.Npc2016Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest21034:OnSubStart2103401(arg1)
    print("OnSubStart2103401")
    this:CreateQuestNpc(arg1, npcs.Npc2016Data.id, 1)
    this:CallDelay(1, self.freestyle)
end

function Quest21034:OnSubFinish2103401(arg1)
    print("OnSubFinish2103401")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest21034:OnSubStart2103406(arg1)
    print("OnSubStart2103406")
end

function Quest21034:OnSubFinish2103406(arg1)
    print("OnSubFinish2103406")
end

function Quest21034:OnSubStart2103407(arg1)
    print("OnSubStart2103407")
end

function Quest21034:OnSubFinish2103407(arg1)
    print("OnSubFinish2103407")
end

function Quest21034:OnSubStart2103402(arg1)
    print("OnSubStart2103402")
    this:CallDelay(1, self.OnCallDelay2103402)
end

function Quest21034:OnSubFinish2103402(arg1)
    print("OnSubFinish2103402")
end

function Quest21034:OnSubStart2103403(arg1)
    print("OnSubStart2103403")
    this:CallDelay(1, self.OnCallDelay2103403)
end

function Quest21034:OnSubFinish2103403(arg1)
    print("OnSubFinish2103403")
    this:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest21034:OnSubStart2103404(arg1)
    print("OnSubStart2103404")
end

function Quest21034:OnSubFinish2103404(arg1)
    print("OnSubFinish2103404")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2016Data.alias)
end

function Quest21034:OnSubStart2103405(arg1)
    print("OnSubStart2103405")
end

function Quest21034:OnSubFinish2103405(arg1)
    print("OnSubFinish2103405")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2016Data.alias)
end

return Quest21034
