require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71064 = class("Quest71064", QuestActorProxy)
Quest71064.defaultAlias = "Quest71064"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71064:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71064:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7106401"] = self.OnSubStart7106401,
        ["7106412"] = self.OnSubStart7106412,
        ["7106402"] = self.OnSubStart7106402,
        ["7106403"] = self.OnSubStart7106403,
        ["7106404"] = self.OnSubStart7106404,
        ["7106405"] = self.OnSubStart7106405,
        ["7106406"] = self.OnSubStart7106406,
        ["7106407"] = self.OnSubStart7106407,
        ["7106413"] = self.OnSubStart7106413,
        ["7106408"] = self.OnSubStart7106408,
        ["7106409"] = self.OnSubStart7106409,
        ["7106410"] = self.OnSubStart7106410,
        ["7106411"] = self.OnSubStart7106411
    }
end

function Quest71064:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7106401"] = self.OnSubFinish7106401,
        ["7106412"] = self.OnSubFinish7106412,
        ["7106402"] = self.OnSubFinish7106402,
        ["7106403"] = self.OnSubFinish7106403,
        ["7106404"] = self.OnSubFinish7106404,
        ["7106405"] = self.OnSubFinish7106405,
        ["7106406"] = self.OnSubFinish7106406,
        ["7106407"] = self.OnSubFinish7106407,
        ["7106413"] = self.OnSubFinish7106413,
        ["7106408"] = self.OnSubFinish7106408,
        ["7106409"] = self.OnSubFinish7106409,
        ["7106410"] = self.OnSubFinish7106410,
        ["7106411"] = self.OnSubFinish7106411
    }
end

function Quest71064:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71064:Start()
    print("Start")
end

function Quest71064:OnDestroy()
    print("OnDestroy")
end

function Quest71064:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71064:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71064:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71064:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71064:OnSubStart7106401(arg1)
    print("OnSubStart7106401")
end

function Quest71064:OnSubFinish7106401(arg1)
    print("OnSubFinish7106401")
end

function Quest71064:OnSubStart7106412(arg1)
    print("OnSubStart7106412")
end

function Quest71064:OnSubFinish7106412(arg1)
    print("OnSubFinish7106412")
end

function Quest71064:OnSubStart7106402(arg1)
    print("OnSubStart7106402")
end

function Quest71064:OnSubFinish7106402(arg1)
    print("OnSubFinish7106402")
end

function Quest71064:OnSubStart7106403(arg1)
    print("OnSubStart7106403")
end

function Quest71064:OnSubFinish7106403(arg1)
    print("OnSubFinish7106403")
end

function Quest71064:OnSubStart7106404(arg1)
    print("OnSubStart7106404")
end

function Quest71064:OnSubFinish7106404(arg1)
    print("OnSubFinish7106404")
end

function Quest71064:OnSubStart7106405(arg1)
    print("OnSubStart7106405")
end

function Quest71064:OnSubFinish7106405(arg1)
    print("OnSubFinish7106405")
end

function Quest71064:OnSubStart7106406(arg1)
    print("OnSubStart7106406")
end

function Quest71064:OnSubFinish7106406(arg1)
    print("OnSubFinish7106406")
end

function Quest71064:OnSubStart7106407(arg1)
    print("OnSubStart7106407")
end

function Quest71064:OnSubFinish7106407(arg1)
    print("OnSubFinish7106407")
end

function Quest71064:OnSubStart7106413(arg1)
    print("OnSubStart7106413")
end

function Quest71064:OnSubFinish7106413(arg1)
    print("OnSubFinish7106413")
end

function Quest71064:OnSubStart7106408(arg1)
    print("OnSubStart7106408")
end

function Quest71064:OnSubFinish7106408(arg1)
    print("OnSubFinish7106408")
end

function Quest71064:OnSubStart7106409(arg1)
    print("OnSubStart7106409")
end

function Quest71064:OnSubFinish7106409(arg1)
    print("OnSubFinish7106409")
end

function Quest71064:OnSubStart7106410(arg1)
    print("OnSubStart7106410")
end

function Quest71064:OnSubFinish7106410(arg1)
    print("OnSubFinish7106410")
end

function Quest71064:OnSubStart7106411(arg1)
    print("OnSubStart7106411")
end

function Quest71064:OnSubFinish7106411(arg1)
    print("OnSubFinish7106411")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2000Data.alias)
end

return Quest71064
