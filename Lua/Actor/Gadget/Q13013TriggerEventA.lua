require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13013TriggerEventA = class("Q13013TriggerEventA", GadgetActorProxy)
Q13013TriggerEventA.defaultAlias = "Q13013TriggerEventA"
local Q13013ClientConfig = require("Quest/Client/Q13013ClientConfig")

local subIDs = Q13013ClientConfig.SubIDs
local npcs = Q13013ClientConfig.Npcs
local datas = Q13013ClientConfig.Datas

function Q13013TriggerEventA:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13013TriggerEventA:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13013TriggerEventA:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1301304)
    self:DestroySelf()
end

function Q13013TriggerEventA:TriggerOut()
    print("TriggerOut")
end

return Q13013TriggerEventA
