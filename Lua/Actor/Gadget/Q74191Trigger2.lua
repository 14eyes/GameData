require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74191Trigger2 = class("Q74191Trigger2", GadgetActorProxy)
Q74191Trigger2.defaultAlias = "Q74191Trigger2"
local Q74191ClientConfig = require("Quest/Client/Q74191ClientConfig")

local this
local subIDs = Q74191ClientConfig.SubIDs
local npcs = Q74191ClientConfig.Npcs
local datas = Q74191ClientConfig.Datas

function Q74191Trigger2:OnPostDataPrepare()
    print("[MainId: 74191][Trigger: Q74191Trigger2] OnPostDataPrepare")
    this = self
end

function Q74191Trigger2:OnPostComponentPrepare()
    print("[MainId: 74191][Trigger: Q74191Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(70.97635, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, function(arg1) end, 0)
end

function Q74191Trigger2:TriggerIn()
    print("[MainId: 74191][Trigger: Q74191Trigger2] TriggerIn")
    actorUtils.FinishQuestID(false, 7419101)
    this:DestroySelf()
end

function Q74191Trigger2:PreTriggerIn()
    print("[MainId: 74191][Trigger: Q74191Trigger2] PreTriggerIn")
end

function Q74191Trigger2:LightUpTriggerIn()
    print("[MainId: 74191][Trigger: Q74191Trigger2] LightUpTriggerIn")
end

function Q74191Trigger2:TriggerOut()
    print("[MainId: 74191][Trigger: Q74191Trigger2] TriggerOut")
end

return Q74191Trigger2
