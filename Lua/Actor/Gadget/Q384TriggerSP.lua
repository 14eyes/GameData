require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q384TriggerSP = class("Q384TriggerSP", GadgetActorProxy)
Q384TriggerSP.defaultAlias = "Q384TriggerSP"
local Q384ClientConfig = require("Quest/Client/Q384ClientConfig")

function Q384TriggerSP:OnPostDataPrepare() end

function Q384TriggerSP:OnPostComponentPrepare()
    self:AddComponentTrigger(6, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q384TriggerSP:TriggerIn()
    print("Out Q384TriggerSP")
    local actor = actorMgr:GetActor(Q384ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

function Q384TriggerSP:TriggerOut() end
return Q384TriggerSP
