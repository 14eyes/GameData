require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7413153TriggerFail = class("Q7413153TriggerFail", GadgetActorProxy)
Q7413153TriggerFail.defaultAlias = "Q7413153TriggerFail"
local Q74131ClientConfig = require("Quest/Client/Q74131ClientConfig")

local this
local subIDs = Q74131ClientConfig.SubIDs
local npcs = Q74131ClientConfig.Npcs
local points = Q74131ClientConfig.Points
local datas = Q74131ClientConfig.Datas

function Q7413153TriggerFail:OnPostDataPrepare()
    print("[MainId: 74131][Trigger: Q7413153TriggerFail] OnPostDataPrepare")
    this = self
end

function Q7413153TriggerFail:OnPostComponentPrepare()
    print("[MainId: 74131][Trigger: Q7413153TriggerFail] OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7413153TriggerFail:TriggerIn()
    print("[MainId: 74131][Trigger: Q7413153TriggerFail] TriggerIn")
end

function Q7413153TriggerFail:PreTriggerIn()
    print("[MainId: 74131][Trigger: Q7413153TriggerFail] PreTriggerIn")
end

function Q7413153TriggerFail:LightUpTriggerIn()
    print("[MainId: 74131][Trigger: Q7413153TriggerFail] LightUpTriggerIn")
end

function Q7413153TriggerFail:TriggerOut()
    print("[MainId: 74131][Trigger: Q7413153TriggerFail] TriggerOut")
    actorUtils.FinishQuestID(true, 7413153)
    this:DestroySelf()
end

return Q7413153TriggerFail
