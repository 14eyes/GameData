require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13019TriggerTempElementView = class("Q13019TriggerTempElementView", GadgetActorProxy)
Q13019TriggerTempElementView.defaultAlias = "Q13019TriggerTempElementView"
local Q13019ClientConfig = require("Quest/Client/Q13019ClientConfig")

local this
local subIDs = Q13019ClientConfig.SubIDs
local npcs = Q13019ClientConfig.Npcs
local points = Q13019ClientConfig.Points
local datas = Q13019ClientConfig.Datas

function Q13019TriggerTempElementView:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13019TriggerTempElementView:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13019TriggerTempElementView:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1301915)
    this:DestroySelf()
end

function Q13019TriggerTempElementView:PreTriggerIn()
    print("PreTriggerIn")
end

function Q13019TriggerTempElementView:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q13019TriggerTempElementView:TriggerOut()
    print("TriggerOut")
end

return Q13019TriggerTempElementView
