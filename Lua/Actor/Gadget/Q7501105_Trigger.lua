require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501105_Trigger = class("Q7501105_Trigger", GadgetActorProxy)
Q7501105_Trigger.defaultAlias = "Q7501105_Trigger"
local Q75011ClientConfig = require("Quest/Client/Q75011ClientConfig")

local this
local subIDs = Q75011ClientConfig.SubIDs
local npcs = Q75011ClientConfig.Npcs
local datas = Q75011ClientConfig.Datas

function Q7501105_Trigger:OnPostDataPrepare()
    print("[MainId: 75011][Trigger: Q7501105_Trigger] OnPostDataPrepare")
    this = self
end

function Q7501105_Trigger:OnPostComponentPrepare()
    print("[MainId: 75011][Trigger: Q7501105_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75011)
end

function Q7501105_Trigger:TriggerIn()
    print("[MainId: 75011][Trigger: Q7501105_Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7501105)
    this:DestroySelf()
end

function Q7501105_Trigger:PreTriggerIn()
    print("[MainId: 75011][Trigger: Q7501105_Trigger] PreTriggerIn")
end

function Q7501105_Trigger:LightUpTriggerIn()
    print("[MainId: 75011][Trigger: Q7501105_Trigger] LightUpTriggerIn")
end

function Q7501105_Trigger:TriggerOut()
    print("[MainId: 75011][Trigger: Q7501105_Trigger] TriggerOut")
end

return Q7501105_Trigger
