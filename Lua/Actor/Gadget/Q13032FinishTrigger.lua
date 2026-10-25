require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13032FinishTrigger = class("Q13032FinishTrigger", GadgetActorProxy)
Q13032FinishTrigger.defaultAlias = "Q13032FinishTrigger"
local Q13032ClientConfig = require("Quest/Client/Q13032ClientConfig")

local this
local subIDs = Q13032ClientConfig.SubIDs
local npcs = Q13032ClientConfig.Npcs
local datas = Q13032ClientConfig.Datas

function Q13032FinishTrigger:OnPostDataPrepare()
    print("[MainId: 13032][Trigger: Q13032FinishTrigger] OnPostDataPrepare")
    this = self
end

function Q13032FinishTrigger:OnPostComponentPrepare()
    print("[MainId: 13032][Trigger: Q13032FinishTrigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(75, 60, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13032FinishTrigger:TriggerIn()
    print("[MainId: 13032][Trigger: Q13032FinishTrigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1303204)
    this:DestroySelf()
end

function Q13032FinishTrigger:PreTriggerIn()
    print("[MainId: 13032][Trigger: Q13032FinishTrigger] PreTriggerIn")
end

function Q13032FinishTrigger:LightUpTriggerIn()
    print("[MainId: 13032][Trigger: Q13032FinishTrigger] LightUpTriggerIn")
end

function Q13032FinishTrigger:TriggerOut()
    print("[MainId: 13032][Trigger: Q13032FinishTrigger] TriggerOut")
end

return Q13032FinishTrigger
