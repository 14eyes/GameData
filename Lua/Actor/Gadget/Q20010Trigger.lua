require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q20010trigger01 = class("Q20010trigger01", GadgetActorProxy)
Q20010trigger01.defaultAlias = "Q20010trigger01"
local Q20010ClientConfig = require("Quest/Client/Q20010ClientConfig")

local actor = actorMgr:GetActor(Q20010ClientConfig.ActorAlias)
function Q20010trigger01:OnPostDataPrepare() end

function Q20010trigger01:OnPostComponentPrepare()
    self:AddComponentTrigger(75, DistType.EULER, M.Pos(0, 0, 0), self.TriggerIn, self.TriggerOut)
end

function Q20010trigger01:TriggerIn()
    print("In Q20010trigger01")
end

function Q20010trigger01:TriggerOut()
    print("Out Q20010trigger01")
    local actor = actorMgr:GetActor(Q20010ClientConfig.ActorAlias)
    if actor:GetSubQuestState(2001002) == 2 then
        actor:FinishQuestID(true, 2001002)
        print("let 2001002 fail")
    end

    self:DestroySelf()
end

return Q20010trigger01
