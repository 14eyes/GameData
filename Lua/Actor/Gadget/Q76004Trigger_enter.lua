require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76004Trigger_enter = class("Q76004Trigger_enter", GadgetActorProxy)
Q76004Trigger_enter.defaultAlias = "Q76004Trigger_enter"
local Q76004ClientConfig = require("Quest/Client/Q76004ClientConfig")

local this
local subIDs = Q76004ClientConfig.SubIDs
local datas = Q76004ClientConfig.Datas
local npcs = Q76004ClientConfig.Npcs
local points = Q76004ClientConfig.Points

function Q76004Trigger_enter:OnPostDataPrepare()
    print("Q76004Trigger_enter - OnPostDataPrepare")
    this = self
end

function Q76004Trigger_enter:OnPostComponentPrepare()
    print("Q76004Trigger_enter - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(20, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76004)
end

function Q76004Trigger_enter:TriggerIn()
    print("Q76004Trigger_enter - TriggerIn")
    actorUtils.FinishQuestID(false, 7600417)
    this:DestroySelf()
end

function Q76004Trigger_enter:PreTriggerIn()
    print("Q76004Trigger_enter - PreTriggerIn")
end

function Q76004Trigger_enter:LightUpTriggerIn()
    print("Q76004Trigger_enter - LightUpTriggerIn")
end

function Q76004Trigger_enter:TriggerOut()
    print("Q76004Trigger_enter - TriggerOut")
end

return Q76004Trigger_enter
