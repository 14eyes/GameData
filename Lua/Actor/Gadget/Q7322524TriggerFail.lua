require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7322524TriggerFail = class("Q7322524TriggerFail", GadgetActorProxy)
Q7322524TriggerFail.defaultAlias = "Q7322524TriggerFail"
local Q73225ClientConfig = require("Quest/Client/Q73225ClientConfig")

local this
local subIDs = Q73225ClientConfig.SubIDs
local npcs = Q73225ClientConfig.Npcs
local datas = Q73225ClientConfig.Datas

function Q7322524TriggerFail:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7322524TriggerFail:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(120, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7322524TriggerFail:TriggerIn()
    print("TriggerIn")
end

function Q7322524TriggerFail:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7322524TriggerFail:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7322524TriggerFail:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(true, 7322524)
    this:DestroySelf()
end

return Q7322524TriggerFail
