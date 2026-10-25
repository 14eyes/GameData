require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502822Trigger = class("Q502822Trigger", GadgetActorProxy)
Q502822Trigger.defaultAlias = "Q502822Trigger"
local Q5028ClientConfig = require("Quest/Client/Q5028ClientConfig")

local this
local subIDs = Q5028ClientConfig.SubIDs
local datas = Q5028ClientConfig.Datas
local npcs = Q5028ClientConfig.Npcs
local points = Q5028ClientConfig.Points

function Q502822Trigger:OnPostDataPrepare()
    print("Q502822Trigger - OnPostDataPrepare")
    this = self
end

function Q502822Trigger:OnPostComponentPrepare()
    print("Q502822Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5028)
end

function Q502822Trigger:TriggerIn()
    print("Q502822Trigger - TriggerIn")
    local actor = actorMgr:GetActor("5028")
    local questGlobalVar = self:GetQuestGlobalVar(502801)
    if questGlobalVar == 0 then
        actor:PlayerEnterDungeonWithData(1458, 158, 502822, 1, datas.PlayerEnterDungeonData, nil, nil)
    elseif questGlobalVar == 1 then
        actor:PlayerEnterDungeonWithData(1458, 158, 502822, 2, datas.PlayerEnterDungeonData, nil, nil)
    elseif questGlobalVar == 2 then
        actor:PlayerEnterDungeonWithData(1458, 158, 502822, 2, datas.PlayerEnterDungeonData, nil, nil)
    end
end

function Q502822Trigger:PreTriggerIn()
    print("Q502822Trigger - PreTriggerIn")
end

function Q502822Trigger:LightUpTriggerIn()
    print("Q502822Trigger - LightUpTriggerIn")
end

function Q502822Trigger:TriggerOut()
    print("Q502822Trigger - TriggerOut")
end

return Q502822Trigger
