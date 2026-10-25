require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74669 = class("Quest74669", QuestActorProxy)
Quest74669.defaultAlias = "Quest74669"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74669:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74669:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7466901"] = self.OnSubStart7466901, ["7466902"] = self.OnSubStart7466902}
end

function Quest74669:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7466901"] = self.OnSubFinish7466901, ["7466902"] = self.OnSubFinish7466902}
end

function Quest74669:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74669:Start()
    print("Start")
end

function Quest74669:OnDestroy()
    print("OnDestroy")
end

function Quest74669:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74669:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74669:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74669:OnSubStart7466901(arg1)
    print("OnSubStart7466901")
    actorMgr:CreateActorWithPos("Q74669Trigger", "Actor/Gadget/Q74669Trigger", 70900002, 0, points.TPos_Q74669Trigger.pos, points.TPos_Q74669Trigger.rot, true, false, 3)
end

function Quest74669:OnSubFinish7466901(arg1)
    print("OnSubFinish7466901")
    this:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest74669:OnSubStart7466902(arg1)
    print("OnSubStart7466902")
end

function Quest74669:OnSubFinish7466902(arg1)
    print("OnSubFinish7466902")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1498)
    end)
end

return Quest74669
