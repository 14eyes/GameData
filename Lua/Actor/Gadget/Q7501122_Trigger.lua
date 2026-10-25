require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501122_Trigger = class("Q7501122_Trigger", GadgetActorProxy)
Q7501122_Trigger.defaultAlias = "Q7501122_Trigger"
local Q75011ClientConfig = require("Quest/Client/Q75011ClientConfig")

local this
local subIDs = Q75011ClientConfig.SubIDs
local npcs = Q75011ClientConfig.Npcs
local datas = Q75011ClientConfig.Datas

function Q7501122_Trigger:OnPostDataPrepare()
    print("[MainId: 75011][Trigger: Q7501122_Trigger] OnPostDataPrepare")
    this = self
end

function Q7501122_Trigger:OnPostComponentPrepare()
    print("[MainId: 75011][Trigger: Q7501122_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(32.82442, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75011)
end

function Q7501122_Trigger:TriggerIn()
    print("[MainId: 75011][Trigger: Q7501122_Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7501122)
    this:DestroySelf()
end

function Q7501122_Trigger:PreTriggerIn()
    print("[MainId: 75011][Trigger: Q7501122_Trigger] PreTriggerIn")
end

function Q7501122_Trigger:LightUpTriggerIn()
    print("[MainId: 75011][Trigger: Q7501122_Trigger] LightUpTriggerIn")
end

function Q7501122_Trigger:TriggerOut()
    print("[MainId: 75011][Trigger: Q7501122_Trigger] TriggerOut")
end

return Q7501122_Trigger
