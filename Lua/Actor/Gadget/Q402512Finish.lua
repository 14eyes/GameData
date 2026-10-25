require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402512Finish = class("Q402512Finish", GadgetActorProxy)
Q402512Finish.defaultAlias = "Q402512Finish"
local Q4025ClientConfig = require("Quest/Client/Q4025ClientConfig")

local this
local subIDs = Q4025ClientConfig.SubIDs
local npcs = Q4025ClientConfig.Npcs
local points = Q4025ClientConfig.Points
local datas = Q4025ClientConfig.Datas

function Q402512Finish:OnPostDataPrepare()
    print("[MainId: 4025][Trigger: Q402512Finish] OnPostDataPrepare")
    this = self
end

function Q402512Finish:OnPostComponentPrepare()
    print("[MainId: 4025][Trigger: Q402512Finish] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402512Finish:TriggerIn()
    print("[MainId: 4025][Trigger: Q402512Finish] TriggerIn")
end

function Q402512Finish:PreTriggerIn()
    print("[MainId: 4025][Trigger: Q402512Finish] PreTriggerIn")
end

function Q402512Finish:LightUpTriggerIn()
    print("[MainId: 4025][Trigger: Q402512Finish] LightUpTriggerIn")
    globalActor:PlayerEnterDungeon(1073, 1193, true, nil, 0)
    this:DestroySelf()
end

function Q402512Finish:TriggerOut()
    print("[MainId: 4025][Trigger: Q402512Finish] TriggerOut")
end

return Q402512Finish
