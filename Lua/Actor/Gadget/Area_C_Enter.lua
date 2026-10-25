require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Area_C_Enter = class("Area_C_Enter", GadgetActorProxy)
Area_C_Enter.defaultAlias = "Area_C_Enter"
local Q72166ClientConfig = require("Quest/Client/Q72166ClientConfig")

local subIDs = Q72166ClientConfig.SubIDs
local npcs = Q72166ClientConfig.Npcs
local datas = Q72166ClientConfig.Datas

function Area_C_Enter:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Area_C_Enter:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Area_C_Enter:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72166"):FinishQuestID(false, 7216615)
    self:DestroySelf()
end

function Area_C_Enter:TriggerOut()
    print("TriggerOut")
end

return Area_C_Enter
