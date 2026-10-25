require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402414Dungeon = class("Q402414Dungeon", GadgetActorProxy)
Q402414Dungeon.defaultAlias = "Q402414Dungeon"
local Q4024ClientConfig = require("Quest/Client/Q4024ClientConfig")

local this
local subIDs = Q4024ClientConfig.SubIDs
local npcs = Q4024ClientConfig.Npcs
local points = Q4024ClientConfig.Points
local datas = Q4024ClientConfig.Datas

function Q402414Dungeon:OnPostDataPrepare()
    print("[MainId: 4024][Trigger: Q402414Dungeon] OnPostDataPrepare")
    this = self
end

function Q402414Dungeon:OnPostComponentPrepare()
    print("[MainId: 4024][Trigger: Q402414Dungeon] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(90, 100, 80, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402414Dungeon:TriggerIn()
    print("[MainId: 4024][Trigger: Q402414Dungeon] TriggerIn")
    globalActor:PlayerEnterDungeon(4, 143, false, nil, 0)
    this:DestroySelf()
end

function Q402414Dungeon:PreTriggerIn()
    print("[MainId: 4024][Trigger: Q402414Dungeon] PreTriggerIn")
end

function Q402414Dungeon:LightUpTriggerIn()
    print("[MainId: 4024][Trigger: Q402414Dungeon] LightUpTriggerIn")
end

function Q402414Dungeon:TriggerOut()
    print("[MainId: 4024][Trigger: Q402414Dungeon] TriggerOut")
end

return Q402414Dungeon
