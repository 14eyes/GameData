require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q20023trigger = class("Q20023trigger", GadgetActorProxy)
Q20023trigger.defaultAlias = "Q20023trigger"
local Q20023ClientConfig = require("Quest/Client/Q20023ClientConfig")

local actor = actorMgr:GetActor(Q20023ClientConfig.ActorAlias)
function Q20023trigger:OnPostDataPrepare() end

function Q20023trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(7, DistType.EULER, M.Pos(0, 0, 0), self.TriggerIn, self.TriggerOut)
end

function Q20023trigger:TriggerIn()
    print("In Q20023trigger")
    local actor = actorMgr:GetActor(Q20023ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 2002306)
    end
end

function Q20023trigger:TriggerOut()
    print("Out Q20023trigger")
    local actor = actorMgr:GetActor(Q20023ClientConfig.ActorAlias)
    if actor:GetSubQuestState(2002307) == 2 then
        actor:FinishQuestID(true, 2002307)
        print("let 2002307 fail")
    end

    if actor:GetSubQuestState(2002307) == 3 then
        actor:NarratorOnlyTask(Q20023ClientConfig.NarratorData.Story4)
    end

    self:DestroySelf()
end

return Q20023trigger
