require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110724TriggerFail = class("Q7110724TriggerFail", GadgetActorProxy)
Q7110724TriggerFail.defaultAlias = "Q7110724TriggerFail"
local Q71107ClientConfig = require("Quest/Client/Q71107ClientConfig")

local this
local subIDs = Q71107ClientConfig.SubIDs
local npcs = Q71107ClientConfig.Npcs
local points = Q71107ClientConfig.Points
local datas = Q71107ClientConfig.Datas

function Q7110724TriggerFail:OnPostDataPrepare()
    print("[MainId: 71107][Trigger: Q7110724TriggerFail] OnPostDataPrepare")
    this = self
end

function Q7110724TriggerFail:OnPostComponentPrepare()
    print("[MainId: 71107][Trigger: Q7110724TriggerFail] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110724TriggerFail:TriggerIn()
    print("[MainId: 71107][Trigger: Q7110724TriggerFail] TriggerIn")
end

function Q7110724TriggerFail:PreTriggerIn()
    print("[MainId: 71107][Trigger: Q7110724TriggerFail] PreTriggerIn")
end

function Q7110724TriggerFail:LightUpTriggerIn()
    print("[MainId: 71107][Trigger: Q7110724TriggerFail] LightUpTriggerIn")
end

function Q7110724TriggerFail:TriggerOut()
    print("[MainId: 71107][Trigger: Q7110724TriggerFail] TriggerOut")
    actorUtils.FinishQuestID(true, 7110724)
    this:DestroySelf()
end

return Q7110724TriggerFail
