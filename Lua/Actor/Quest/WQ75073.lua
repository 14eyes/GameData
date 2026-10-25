require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75073 = class("Quest75073", QuestActorProxy)
Quest75073.defaultAlias = "Quest75073"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest75073:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest75073:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7507301"] = self.OnSubStart7507301,
        ["7507302"] = self.OnSubStart7507302,
        ["7507303"] = self.OnSubStart7507303,
        ["7507304"] = self.OnSubStart7507304,
        ["7507305"] = self.OnSubStart7507305,
        ["7507306"] = self.OnSubStart7507306
    }
end

function Quest75073:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7507301"] = self.OnSubFinish7507301,
        ["7507302"] = self.OnSubFinish7507302,
        ["7507303"] = self.OnSubFinish7507303,
        ["7507304"] = self.OnSubFinish7507304,
        ["7507305"] = self.OnSubFinish7507305,
        ["7507306"] = self.OnSubFinish7507306
    }
end

function Quest75073:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75073:Start()
    print("Start")
end

function Quest75073:OnDestroy()
    print("OnDestroy")
end

function Quest75073:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75073:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75073:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75073:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75073:OnSubStart7507301(arg1)
    print("OnSubStart7507301")
    this:CreateQuestNpc(arg1, npcs.Npc21614Data.id, 0, false, 0)
end

function Quest75073:OnSubFinish7507301(arg1)
    print("OnSubFinish7507301")
end

function Quest75073:OnSubStart7507302(arg1)
    print("OnSubStart7507302")
end

function Quest75073:OnSubFinish7507302(arg1)
    print("OnSubFinish7507302")
end

function Quest75073:OnSubStart7507303(arg1)
    print("OnSubStart7507303")
    actorMgr:CreateActorWithPos("Q75073Trigger", "Actor/Gadget/Q75073Trigger", 70900002, 0, {x = -1084.308, y = 267.535, z = 9295.552}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75073:OnSubFinish7507303(arg1)
    print("OnSubFinish7507303")
    this:QuestNarratorTask(datas.NarratorWithId7507303)
end

function Quest75073:OnSubStart7507304(arg1)
    print("OnSubStart7507304")
end

function Quest75073:OnSubFinish7507304(arg1)
    print("OnSubFinish7507304")
end

function Quest75073:OnSubStart7507305(arg1)
    print("OnSubStart7507305")
end

function Quest75073:OnSubFinish7507305(arg1)
    print("OnSubFinish7507305")
end

function Quest75073:OnSubStart7507306(arg1)
    print("OnSubStart7507306")
    this:RequestInteraction(npcs.Npc21614Data.alias, "", true)
end

function Quest75073:OnSubFinish7507306(arg1)
    print("OnSubFinish7507306")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21614Data.alias)
end

return Quest75073
