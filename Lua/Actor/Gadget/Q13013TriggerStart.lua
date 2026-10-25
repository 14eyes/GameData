require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13013TriggerStart = class("Q13013TriggerStart", GadgetActorProxy)
Q13013TriggerStart.defaultAlias = "Q13013TriggerStart"
local Q13013ClientConfig = require("Quest/Client/Q13013ClientConfig")

local subIDs = Q13013ClientConfig.SubIDs
local npcs = Q13013ClientConfig.Npcs
local datas = Q13013ClientConfig.Datas

function Q13013TriggerStart:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13013TriggerStart:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13013TriggerStart:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1301301)
    self:DestroySelf()
end

function Q13013TriggerStart:TriggerOut()
    print("TriggerOut")
end

return Q13013TriggerStart
