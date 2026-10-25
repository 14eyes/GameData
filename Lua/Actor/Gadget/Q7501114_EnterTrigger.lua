require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501114_EnterTrigger = class("Q7501114_EnterTrigger", GadgetActorProxy)
Q7501114_EnterTrigger.defaultAlias = "Q7501114_EnterTrigger"
local Q75011ClientConfig = require("Quest/Client/Q75011ClientConfig")

local this
local subIDs = Q75011ClientConfig.SubIDs
local npcs = Q75011ClientConfig.Npcs
local datas = Q75011ClientConfig.Datas

function Q7501114_EnterTrigger:OnPostDataPrepare()
    print("[MainId: 75011][Trigger: Q7501114_EnterTrigger] OnPostDataPrepare")
    this = self
end

function Q7501114_EnterTrigger:OnPostComponentPrepare()
    print("[MainId: 75011][Trigger: Q7501114_EnterTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75011)
end

function Q7501114_EnterTrigger:TriggerIn()
    print("[MainId: 75011][Trigger: Q7501114_EnterTrigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7501114)
    this:DestroySelf()
end

function Q7501114_EnterTrigger:PreTriggerIn()
    print("[MainId: 75011][Trigger: Q7501114_EnterTrigger] PreTriggerIn")
end

function Q7501114_EnterTrigger:LightUpTriggerIn()
    print("[MainId: 75011][Trigger: Q7501114_EnterTrigger] LightUpTriggerIn")
end

function Q7501114_EnterTrigger:TriggerOut()
    print("[MainId: 75011][Trigger: Q7501114_EnterTrigger] TriggerOut")
end

return Q7501114_EnterTrigger
