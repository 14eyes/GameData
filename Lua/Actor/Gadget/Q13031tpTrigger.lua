require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13031tpTrigger = class("Q13031tpTrigger", GadgetActorProxy)
Q13031tpTrigger.defaultAlias = "Q13031tpTrigger"
local Q13031ClientConfig = require("Quest/Client/Q13031ClientConfig")

local this
local subIDs = Q13031ClientConfig.SubIDs
local npcs = Q13031ClientConfig.Npcs
local points = Q13031ClientConfig.Points
local datas = Q13031ClientConfig.Datas

function Q13031tpTrigger:OnPostDataPrepare()
    print("[MainId: 13031][Trigger: Q13031tpTrigger] OnPostDataPrepare")
    this = self
end

function Q13031tpTrigger:OnPostComponentPrepare()
    print("[MainId: 13031][Trigger: Q13031tpTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13031tpTrigger:TriggerIn()
    print("[MainId: 13031][Trigger: Q13031tpTrigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1303126)
    this:DestroySelf()
end

function Q13031tpTrigger:PreTriggerIn()
    print("[MainId: 13031][Trigger: Q13031tpTrigger] PreTriggerIn")
end

function Q13031tpTrigger:LightUpTriggerIn()
    print("[MainId: 13031][Trigger: Q13031tpTrigger] LightUpTriggerIn")
end

function Q13031tpTrigger:TriggerOut()
    print("[MainId: 13031][Trigger: Q13031tpTrigger] TriggerOut")
end

return Q13031tpTrigger
