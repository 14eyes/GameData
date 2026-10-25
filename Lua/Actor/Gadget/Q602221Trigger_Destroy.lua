require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602221Trigger_Destroy = class("Q602221Trigger_Destroy", GadgetActorProxy)
Q602221Trigger_Destroy.defaultAlias = "Q602221Trigger_Destroy"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602221Trigger_Destroy:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Q602221Trigger_Destroy:OnPostDataPrepare()
    print("Q602221Trigger_Destroy - OnPostDataPrepare")
    this = self
end

function Q602221Trigger_Destroy:OnPostComponentPrepare()
    print("Q602221Trigger_Destroy - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602221Trigger_Destroy:TriggerIn()
    print("Q602221Trigger_Destroy - TriggerIn")
    this:ActorDestroy("Q602220Trigger_Transmit")
    this:DestroySelf()
end

function Q602221Trigger_Destroy:PreTriggerIn()
    print("Q602221Trigger_Destroy - PreTriggerIn")
end

function Q602221Trigger_Destroy:LightUpTriggerIn()
    print("Q602221Trigger_Destroy - LightUpTriggerIn")
end

function Q602221Trigger_Destroy:TriggerOut()
    print("Q602221Trigger_Destroy - TriggerOut")
end

return Q602221Trigger_Destroy
