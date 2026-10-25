require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q801802EnterDungeon = class("Q801802EnterDungeon", GadgetActorProxy)
Q801802EnterDungeon.defaultAlias = "Q801802EnterDungeon"
local Q8018ClientConfig = require("Quest/Client/Q8018ClientConfig")

local this
local subIDs = Q8018ClientConfig.SubIDs
local datas = Q8018ClientConfig.Datas
local npcs = Q8018ClientConfig.Npcs
local points = Q8018ClientConfig.Points

function Q801802EnterDungeon:OnPostDataPrepare()
    print("Q801802EnterDungeon - OnPostDataPrepare")
    this = self
end

function Q801802EnterDungeon:OnPostComponentPrepare()
    print("Q801802EnterDungeon - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 8018)
end

function Q801802EnterDungeon:TriggerIn()
    print("Q801802EnterDungeon - TriggerIn")
end

function Q801802EnterDungeon:PreTriggerIn()
    print("Q801802EnterDungeon - PreTriggerIn")
end

function Q801802EnterDungeon:LightUpTriggerIn()
    print("Q801802EnterDungeon - LightUpTriggerIn")
    actorMgr:GetActor("8018"):PlayerEnterDungeonWithData(1523, 1246, 801802, 1, datas.PlayerEnterDungeonData, nil, nil)
    this:DestroySelf()
end

function Q801802EnterDungeon:TriggerOut()
    print("Q801802EnterDungeon - TriggerOut")
end

return Q801802EnterDungeon
