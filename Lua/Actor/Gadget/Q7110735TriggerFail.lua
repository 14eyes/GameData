require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110735TriggerFail = class("Q7110735TriggerFail", GadgetActorProxy)
Q7110735TriggerFail.defaultAlias = "Q7110735TriggerFail"
local Q71107ClientConfig = require("Quest/Client/Q71107ClientConfig")

local this
local subIDs = Q71107ClientConfig.SubIDs
local npcs = Q71107ClientConfig.Npcs
local points = Q71107ClientConfig.Points
local datas = Q71107ClientConfig.Datas

function Q7110735TriggerFail:OnPostDataPrepare()
    print("[MainId: 71107][Trigger: Q7110735TriggerFail] OnPostDataPrepare")
    this = self
end

function Q7110735TriggerFail:OnPostComponentPrepare()
    print("[MainId: 71107][Trigger: Q7110735TriggerFail] OnPostComponentPrepare")
    this:AddComponentTrigger(120, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110735TriggerFail:TriggerIn()
    print("[MainId: 71107][Trigger: Q7110735TriggerFail] TriggerIn")
end

function Q7110735TriggerFail:PreTriggerIn()
    print("[MainId: 71107][Trigger: Q7110735TriggerFail] PreTriggerIn")
end

function Q7110735TriggerFail:LightUpTriggerIn()
    print("[MainId: 71107][Trigger: Q7110735TriggerFail] LightUpTriggerIn")
end

function Q7110735TriggerFail:TriggerOut()
    print("[MainId: 71107][Trigger: Q7110735TriggerFail] TriggerOut")
    actorUtils.FinishQuestID(true, 7110720)
    this:DestroySelf()
end

return Q7110735TriggerFail
