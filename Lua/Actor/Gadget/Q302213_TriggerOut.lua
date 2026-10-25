require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302213_TriggerOut = class("Q302213_TriggerOut", GadgetActorProxy)
Q302213_TriggerOut.defaultAlias = "Q302213_TriggerOut"
local Q3022ClientConfig = require("Quest/Client/Q3022ClientConfig")

local subIDs = Q3022ClientConfig.SubIDs
local npcs = Q3022ClientConfig.Npcs
local gadgets = Q3022ClientConfig.Gadgets
local datas = Q3022ClientConfig.Datas

function Q302213_TriggerOut:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302213_TriggerOut:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(25, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302213_TriggerOut:TriggerIn()
    print("TriggerIn")
end

function Q302213_TriggerOut:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("3022"):ActionSafeCall(function(arg1)
        if sceneData.currSceneID == 51007 then
            actorMgr:GetActor("3022"):NarratorOnlyTaskByData(datas.Narrator_302212_TriggerOut)
        end
    end)

    self:DestroySelf()
end

return Q302213_TriggerOut
