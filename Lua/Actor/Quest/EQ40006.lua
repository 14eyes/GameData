require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40006 = class("Quest40006", QuestActorProxy)
Quest40006.defaultAlias = "Quest40006"
local Q40006ClientConfig = require("Quest/Client/Q40006ClientConfig")

function Quest40006:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["4000601"] = self.OnSubStart4000601
end

function Quest40006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["4000601"] = self.OnSubFinish4000601
end

function Quest40006:ClearIcon()
    print("Clear NpcIcon")
    actorMgr:GetActor("Npc2029"):ClearGeneralMark()
    actorMgr:GetActor("Npc2004"):ClearGeneralMark()
end

function Quest40006:OnSubStart4000601(arg1)
    print("4000601 start:")
    actorMgr:GetActor("Npc2029"):AddGeneralMark("UI_NPCTopIcon_Activity_SeaLamp")
    actorMgr:GetActor("Npc2004"):AddGeneralMark("UI_NPCTopIcon_GeneralCargo")
end

function Quest40006:Start() end

function Quest40006:OnDestroy(arg1)
    print("Quest40006:OnDestroy")
    self:ClearIcon()
end

function Quest40006:OnMainCanceled(arg1)
    print("Quest40006:OnMainCancele")
    self:ClearIcon()
end

return Quest40006
