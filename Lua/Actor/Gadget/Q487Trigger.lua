require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q487Trigger = class("Q487Trigger", GadgetActorProxy)
Q487Trigger.defaultAlias = "Q487Trigger"
local Q487ClientConfig = require("Quest/Client/Q487ClientConfig")

local tbl = {}

tbl.Story1 = {
    {dialogID = 4870003, audioEvtName = "", duration = 3},
    {dialogID = 4870004, audioEvtName = "", duration = 3}
}

tbl.Story2 = {
    {dialogID = 4870005, audioEvtName = "", duration = 3},
    {dialogID = 4870006, audioEvtName = "", duration = 3}
}

function Q487Trigger:OnPostDataPrepare() end

function Q487Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(80, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q487Trigger:TriggerIn1() end

function Q487Trigger:TriggerOut1()
    print("Out Q487Trigger")
    globalActor:NarratorOnlyTaskLegacy(tbl.Story2)
end

function Q487Trigger:TriggerIn() end

function Q487Trigger:TriggerOut()
    print("Out Q487Trigger")
    globalActor:NarratorOnlyTaskLegacy(tbl.Story1)
    local actor = actorMgr:GetActor(Q487ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 48702)
    end
end

return Q487Trigger
