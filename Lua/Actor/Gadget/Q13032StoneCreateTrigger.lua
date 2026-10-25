require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13032StoneCreateTrigger = class("Q13032StoneCreateTrigger", GadgetActorProxy)
Q13032StoneCreateTrigger.defaultAlias = "Q13032StoneCreateTrigger"
local Q13032ClientConfig = require("Quest/Client/Q13032ClientConfig")

local this
local subIDs = Q13032ClientConfig.SubIDs
local npcs = Q13032ClientConfig.Npcs
local datas = Q13032ClientConfig.Datas

function Q13032StoneCreateTrigger:OnPostDataPrepare()
    print("[MainId: 13032][Trigger: Q13032StoneCreateTrigger] OnPostDataPrepare")
    this = self
end

function Q13032StoneCreateTrigger:OnPostComponentPrepare()
    print("[MainId: 13032][Trigger: Q13032StoneCreateTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13032StoneCreateTrigger:TriggerIn()
    print("[MainId: 13032][Trigger: Q13032StoneCreateTrigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1303213)
    this:DestroySelf()
end

function Q13032StoneCreateTrigger:PreTriggerIn()
    print("[MainId: 13032][Trigger: Q13032StoneCreateTrigger] PreTriggerIn")
end

function Q13032StoneCreateTrigger:LightUpTriggerIn()
    print("[MainId: 13032][Trigger: Q13032StoneCreateTrigger] LightUpTriggerIn")
end

function Q13032StoneCreateTrigger:TriggerOut()
    print("[MainId: 13032][Trigger: Q13032StoneCreateTrigger] TriggerOut")
end

return Q13032StoneCreateTrigger
