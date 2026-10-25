require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402508Finish = class("Q402508Finish", GadgetActorProxy)
Q402508Finish.defaultAlias = "Q402508Finish"
local Q4025ClientConfig = require("Quest/Client/Q4025ClientConfig")

local this
local subIDs = Q4025ClientConfig.SubIDs
local npcs = Q4025ClientConfig.Npcs
local points = Q4025ClientConfig.Points
local datas = Q4025ClientConfig.Datas

function Q402508Finish:OnPostDataPrepare()
    print("[MainId: 4025][Trigger: Q402508Finish] OnPostDataPrepare")
    this = self
end

function Q402508Finish:OnPostComponentPrepare()
    print("[MainId: 4025][Trigger: Q402508Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402508Finish:TriggerIn()
    print("[MainId: 4025][Trigger: Q402508Finish] TriggerIn")
    actorUtils.FinishQuestID(false, 402508)
    this:DestroySelf()
end

function Q402508Finish:PreTriggerIn()
    print("[MainId: 4025][Trigger: Q402508Finish] PreTriggerIn")
end

function Q402508Finish:LightUpTriggerIn()
    print("[MainId: 4025][Trigger: Q402508Finish] LightUpTriggerIn")
end

function Q402508Finish:TriggerOut()
    print("[MainId: 4025][Trigger: Q402508Finish] TriggerOut")
end

return Q402508Finish
