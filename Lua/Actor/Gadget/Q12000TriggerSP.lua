require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12000TriggerSP = class("Q12000TriggerSP", GadgetActorProxy)
Q12000TriggerSP.defaultAlias = "Q12000TriggerSP"
local Q12000ClientConfig = require("Quest/Client/Q12000ClientConfig")

function Q12000TriggerSP:OnPostDataPrepare() end

function Q12000TriggerSP:OnPostComponentPrepare()
    self:AddComponentTrigger(6, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q12000TriggerSP:TriggerIn()
    print("Out Q12000TriggerSP")
    local actor = actorMgr:GetActor(Q12000ClientConfig.ActorAlias)
    if actor ~= nil then
        print("***************get quest success")
        actor:FinishQuest(false, nil)
    end

    print("35301 start: 222")
    self:DestroySelf()
end

function Q12000TriggerSP:TriggerOut()
    print("35301 start: 111")
end

return Q12000TriggerSP
