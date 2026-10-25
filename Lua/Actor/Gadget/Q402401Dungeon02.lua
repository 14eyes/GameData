require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402401Dungeon02 = class("Q402401Dungeon02", GadgetActorProxy)
Q402401Dungeon02.defaultAlias = "Q402401Dungeon02"
local Q4024ClientConfig = require("Quest/Client/Q4024ClientConfig")

local this
local subIDs = Q4024ClientConfig.SubIDs
local npcs = Q4024ClientConfig.Npcs
local points = Q4024ClientConfig.Points
local datas = Q4024ClientConfig.Datas

function Q402401Dungeon02:OnPostDataPrepare()
    print("[MainId: 4024][Trigger: Q402401Dungeon02] OnPostDataPrepare")
    this = self
end

function Q402401Dungeon02:OnPostComponentPrepare()
    print("[MainId: 4024][Trigger: Q402401Dungeon02] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402401Dungeon02:TriggerIn()
    print("[MainId: 4024][Trigger: Q402401Dungeon02] TriggerIn")
    globalActor:PlayerEnterDungeon(2, 1189, false, nil, 0)
    this:DestroySelf()
end

function Q402401Dungeon02:PreTriggerIn()
    print("[MainId: 4024][Trigger: Q402401Dungeon02] PreTriggerIn")
end

function Q402401Dungeon02:LightUpTriggerIn()
    print("[MainId: 4024][Trigger: Q402401Dungeon02] LightUpTriggerIn")
end

function Q402401Dungeon02:TriggerOut()
    print("[MainId: 4024][Trigger: Q402401Dungeon02] TriggerOut")
end

return Q402401Dungeon02
