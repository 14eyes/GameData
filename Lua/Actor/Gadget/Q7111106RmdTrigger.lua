require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7111106RmdTrigger = class("Q7111106RmdTrigger", GadgetActorProxy)
Q7111106RmdTrigger.defaultAlias = "Q7111106RmdTrigger"
local Q71111ClientConfig = require("Quest/Client/Q71111ClientConfig")

local this
local subIDs = Q71111ClientConfig.SubIDs
local npcs = Q71111ClientConfig.Npcs
local points = Q71111ClientConfig.Points
local datas = Q71111ClientConfig.Datas

function Q7111106RmdTrigger:OnPostDataPrepare()
    print("[MainId: 71111][Trigger: Q7111106RmdTrigger] OnPostDataPrepare")
    this = self
end

function Q7111106RmdTrigger:OnPostComponentPrepare()
    print("[MainId: 71111][Trigger: Q7111106RmdTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7111106RmdTrigger:TriggerIn()
    print("[MainId: 71111][Trigger: Q7111106RmdTrigger] TriggerIn")
    local actor = actorMgr:GetActor("71111")
    this:DestroySelf()
    actor:QuestNarratorTask(datas.Narrator_7111103)
end

function Q7111106RmdTrigger:PreTriggerIn()
    print("[MainId: 71111][Trigger: Q7111106RmdTrigger] PreTriggerIn")
end

function Q7111106RmdTrigger:LightUpTriggerIn()
    print("[MainId: 71111][Trigger: Q7111106RmdTrigger] LightUpTriggerIn")
end

function Q7111106RmdTrigger:TriggerOut()
    print("[MainId: 71111][Trigger: Q7111106RmdTrigger] TriggerOut")
end

return Q7111106RmdTrigger
