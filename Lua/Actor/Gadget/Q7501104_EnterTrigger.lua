require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501104_EnterTrigger = class("Q7501104_EnterTrigger", GadgetActorProxy)
Q7501104_EnterTrigger.defaultAlias = "Q7501104_EnterTrigger"
local Q75011ClientConfig = require("Quest/Client/Q75011ClientConfig")

local this
local subIDs = Q75011ClientConfig.SubIDs
local npcs = Q75011ClientConfig.Npcs
local datas = Q75011ClientConfig.Datas

function Q7501104_EnterTrigger:OnPostDataPrepare()
    print("[MainId: 75011][Trigger: Q7501104_EnterTrigger] OnPostDataPrepare")
    this = self
end

function Q7501104_EnterTrigger:OnPostComponentPrepare()
    print("[MainId: 75011][Trigger: Q7501104_EnterTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75011)
end

function Q7501104_EnterTrigger:TriggerIn()
    print("[MainId: 75011][Trigger: Q7501104_EnterTrigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7501104)
    this:DestroySelf()
end

function Q7501104_EnterTrigger:PreTriggerIn()
    print("[MainId: 75011][Trigger: Q7501104_EnterTrigger] PreTriggerIn")
end

function Q7501104_EnterTrigger:LightUpTriggerIn()
    print("[MainId: 75011][Trigger: Q7501104_EnterTrigger] LightUpTriggerIn")
end

function Q7501104_EnterTrigger:TriggerOut()
    print("[MainId: 75011][Trigger: Q7501104_EnterTrigger] TriggerOut")
end

return Q7501104_EnterTrigger
