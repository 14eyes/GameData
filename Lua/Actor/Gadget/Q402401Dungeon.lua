require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402401Dungeon = class("Q402401Dungeon", GadgetActorProxy)
Q402401Dungeon.defaultAlias = "Q402401Dungeon"
local Q4024ClientConfig = require("Quest/Client/Q4024ClientConfig")

local this
local subIDs = Q4024ClientConfig.SubIDs
local npcs = Q4024ClientConfig.Npcs
local points = Q4024ClientConfig.Points
local datas = Q4024ClientConfig.Datas

function Q402401Dungeon:OnPostDataPrepare()
    print("[MainId: 4024][Trigger: Q402401Dungeon] OnPostDataPrepare")
    this = self
end

function Q402401Dungeon:OnPostComponentPrepare()
    print("[MainId: 4024][Trigger: Q402401Dungeon] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(100, 100, 80, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402401Dungeon:TriggerIn()
    print("[MainId: 4024][Trigger: Q402401Dungeon] TriggerIn")
    actorMgr:GetActor("4024"):ShowBlackScreen(0.5, 1, 0, function(arg1)
        local actor = actorMgr:GetActor("4024")
        globalActor:PlayerEnterDungeon(2, 1189, true, nil, 0)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q402401Dungeon:PreTriggerIn()
    print("[MainId: 4024][Trigger: Q402401Dungeon] PreTriggerIn")
end

function Q402401Dungeon:LightUpTriggerIn()
    print("[MainId: 4024][Trigger: Q402401Dungeon] LightUpTriggerIn")
end

function Q402401Dungeon:TriggerOut()
    print("[MainId: 4024][Trigger: Q402401Dungeon] TriggerOut")
end

return Q402401Dungeon
