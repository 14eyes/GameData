require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40012RazorTrigger = class("Q40012RazorTrigger", GadgetActorProxy)
Q40012RazorTrigger.defaultAlias = "Q40012RazorTrigger"
local Q40012ClientConfig = require("Quest/Client/Q40012ClientConfig")

local subIDs = Q40012ClientConfig.SubIDs
local npcs = Q40012ClientConfig.Npcs
local gadgets = Q40012ClientConfig.Gadgets
local datas = Q40012ClientConfig.Datas

function Q40012RazorTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40012RazorTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40012RazorTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40012"):RequestInteraction(npcs.RazorData.alias)
    self:DestroySelf()
end

function Q40012RazorTrigger:TriggerOut()
    print("TriggerOut")
end

return Q40012RazorTrigger
