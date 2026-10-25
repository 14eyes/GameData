require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402426Dungeon = class("Q402426Dungeon", GadgetActorProxy)
Q402426Dungeon.defaultAlias = "Q402426Dungeon"
local Q4024ClientConfig = require("Quest/Client/Q4024ClientConfig")

local this
local subIDs = Q4024ClientConfig.SubIDs
local npcs = Q4024ClientConfig.Npcs
local points = Q4024ClientConfig.Points
local datas = Q4024ClientConfig.Datas

function Q402426Dungeon:OnPostDataPrepare()
    print("[MainId: 4024][Trigger: Q402426Dungeon] OnPostDataPrepare")
    this = self
end

function Q402426Dungeon:OnPostComponentPrepare()
    print("[MainId: 4024][Trigger: Q402426Dungeon] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402426Dungeon:TriggerIn()
    print("[MainId: 4024][Trigger: Q402426Dungeon] TriggerIn")
    actorUtils.FinishQuestID(false, 402426)
    this:DestroySelf()
end

function Q402426Dungeon:PreTriggerIn()
    print("[MainId: 4024][Trigger: Q402426Dungeon] PreTriggerIn")
end

function Q402426Dungeon:LightUpTriggerIn()
    print("[MainId: 4024][Trigger: Q402426Dungeon] LightUpTriggerIn")
end

function Q402426Dungeon:TriggerOut()
    print("[MainId: 4024][Trigger: Q402426Dungeon] TriggerOut")
end

return Q402426Dungeon
