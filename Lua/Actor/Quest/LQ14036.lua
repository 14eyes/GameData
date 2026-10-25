require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14036 = class("Quest14036", QuestActorProxy)
Quest14036.defaultAlias = "Quest14036"
local clientData
local this
local mainID
local actorAlias
local datas
local points

function Quest14036:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    points = clientData.Points
end

function Quest14036:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1403612"] = self.OnSubStart1403612,
        ["1403601"] = self.OnSubStart1403601,
        ["1403602"] = self.OnSubStart1403602,
        ["1403603"] = self.OnSubStart1403603,
        ["1403610"] = self.OnSubStart1403610,
        ["1403604"] = self.OnSubStart1403604,
        ["1403605"] = self.OnSubStart1403605,
        ["1403606"] = self.OnSubStart1403606,
        ["1403611"] = self.OnSubStart1403611,
        ["1403607"] = self.OnSubStart1403607,
        ["1403608"] = self.OnSubStart1403608,
        ["1403609"] = self.OnSubStart1403609
    }
end

function Quest14036:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1403612"] = self.OnSubFinish1403612,
        ["1403601"] = self.OnSubFinish1403601,
        ["1403602"] = self.OnSubFinish1403602,
        ["1403603"] = self.OnSubFinish1403603,
        ["1403610"] = self.OnSubFinish1403610,
        ["1403604"] = self.OnSubFinish1403604,
        ["1403605"] = self.OnSubFinish1403605,
        ["1403606"] = self.OnSubFinish1403606,
        ["1403611"] = self.OnSubFinish1403611,
        ["1403607"] = self.OnSubFinish1403607,
        ["1403608"] = self.OnSubFinish1403608,
        ["1403609"] = self.OnSubFinish1403609
    }
end

function Quest14036:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1403601"] = self.OnSubFailed1403601,
        ["1403602"] = self.OnSubFailed1403602,
        ["1403605"] = self.OnSubFailed1403605,
        ["1403608"] = self.OnSubFailed1403608,
        ["1403609"] = self.OnSubFailed1403609
    }
end

function Quest14036:Start()
    print("Start")
end

function Quest14036:OnDestroy()
    print("OnDestroy")
end

function Quest14036:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14036:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14036:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14036:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest14036:OnSubStart1403612(arg1)
    print("OnSubStart1403612")
end

function Quest14036:OnSubFinish1403612(arg1)
    print("OnSubFinish1403612")
end

function Quest14036:OnSubStart1403601(arg1)
    print("OnSubStart1403601")
    actorMgr:CreateActorWithPos("Q140360120217Trigger", "Actor/Gadget/Q140360120217Trigger", 70900002, 0, points.Q140360120217Trigger.pos, points.Q140360120217Trigger.rot, true, false, 20217)
end

function Quest14036:OnSubFinish1403601(arg1)
    print("OnSubFinish1403601")
end

function Quest14036:OnSubFailed1403601(arg1)
    print("OnSubFailed1403601")
    this:ActorDestroy("Q1403201Trigger")
end

function Quest14036:OnSubStart1403602(arg1)
    print("OnSubStart1403602")
    actorUtils.SimpleUIShowForLua(false, "General", "ART/Effect/UI/UI/Eff_UI_Clorinde_Screen_01", nil)
    globalActor:SpawnAttachInFixedAreaEx("14036001", "TRPGGameBadge_PlayerBoy", 10000005, nil, nil, nil, datas.SpecialSceneList, false)
    globalActor:SpawnAttachInFixedAreaEx("14036002", "TRPGGameBadge_PlayerGirl", 10000007, nil, nil, nil, datas.SpecialSceneList, false)
    globalActor:SpawnAttachInFixedAreaEx("14036003", "TRPGGameBadge_Furina", 10000089, nil, nil, nil, datas.SpecialSceneList, false)
    globalActor:SpawnAttachInFixedAreaEx("14036004", "TRPGGameBadge_Navia", 10000091, nil, nil, nil, datas.SpecialSceneList, false)
    globalActor:SpawnAttachInFixedAreaEx("14036005", "TRPGGameBadge_Liney", 10000084, nil, nil, nil, datas.SpecialSceneList, false)
    actorMgr:CreateActorWithPos("Q14036202Trigger", "Actor/Gadget/Q14036202Trigger", 70900002, 0, points.Q14036202Trigger.pos, points.Q14036202Trigger.rot, true, false, 3)
end

function Quest14036:OnSubFinish1403602(arg1)
    print("OnSubFinish1403602")
    this:ActorDestroy("Q14036202Trigger")
    actorUtils.SimpleUIShowForLua(true, "General", "ART/Effect/UI/UI/Eff_UI_Clorinde_Screen_01", nil)
end

function Quest14036:OnSubFailed1403602(arg1)
    print("OnSubFailed1403602")
    actorUtils.SimpleUIShowForLua(true, "General", "ART/Effect/UI/UI/Eff_UI_Clorinde_Screen_01", nil)
    globalActor:UnSpawnAttachInFixedArea(14036001)
    globalActor:UnSpawnAttachInFixedArea(14036002)
    globalActor:UnSpawnAttachInFixedArea(14036003)
    globalActor:UnSpawnAttachInFixedArea(14036004)
    globalActor:UnSpawnAttachInFixedArea(14036005)
    this:ActorDestroy("Q14036202Trigger")
end

function Quest14036:OnSubStart1403603(arg1)
    print("OnSubStart1403603")
    actorUtils.SimpleUIShowForLua(true, "General", "ART/Effect/UI/UI/Eff_UI_Clorinde_Screen_01", nil)
    globalActor:UnSpawnAttachInFixedArea(14036001)
    globalActor:UnSpawnAttachInFixedArea(14036002)
    globalActor:UnSpawnAttachInFixedArea(14036003)
    globalActor:UnSpawnAttachInFixedArea(14036004)
    globalActor:UnSpawnAttachInFixedArea(14036005)
    if this:GetSubQuestState(1403204) == 2 then
        this:SetQuestVarByMainId(0, 2)
    else
        if this:GetSubQuestState(1403205) == 2 then
            this:SetQuestVarByMainId(0, 3)
        else
            if this:GetSubQuestState(1403206) == 2 then
                this:SetQuestVarByMainId(0, 4)
            else
                if this:GetSubQuestState(1403221) == 2 then
                    this:SetQuestVarByMainId(0, 5)
                else
                    if this:GetSubQuestState(1403222) == 2 then
                        this:SetQuestVarByMainId(0, 6)
                    else
                        if this:GetSubQuestState(1403223) == 2 then
                            this:SetQuestVarByMainId(0, 7)
                        else
                            if this:GetSubQuestState(1403224) == 2 then
                                this:SetQuestVarByMainId(0, 8)
                            else
                                this:SetQuestVarByMainId(0, 1)
                            end
                        end
                    end
                end
            end
        end
    end
end

function Quest14036:OnSubFinish1403603(arg1)
    print("OnSubFinish1403603")
    this:PlayerEnterDungeonWithData(1223, 1203, 1403603, this:GetQuestVar(1403603, 0), datas.PlayerEnterDungeonData14032, nil, nil)
end

function Quest14036:OnSubStart1403610(arg1)
    print("OnSubStart1403610")
end

function Quest14036:OnSubFinish1403610(arg1)
    print("OnSubFinish1403610")
end

function Quest14036:OnSubStart1403604(arg1)
    print("OnSubStart1403604")
    actorMgr:CreateActorWithPos("Q140360420219Trigger", "Actor/Gadget/Q140360420219Trigger", 70900002, 0, points.Q140360420219Trigger.pos, points.Q140360420219Trigger.rot, true, false, 20219)
end

function Quest14036:OnSubFinish1403604(arg1)
    print("OnSubFinish1403604")
end

function Quest14036:OnSubStart1403605(arg1)
    print("OnSubStart1403605")
    actorUtils.SimpleUIShowForLua(false, "General", "ART/Effect/UI/UI/Eff_UI_Clorinde_Screen_01", nil)
    globalActor:SpawnAttachInFixedAreaEx("14036001", "TRPGGameBadge_PlayerBoy", 10000005, nil, nil, nil, datas.SpecialSceneList, true)
    globalActor:SpawnAttachInFixedAreaEx("14036002", "TRPGGameBadge_PlayerGirl", 10000007, nil, nil, nil, datas.SpecialSceneList, true)
    globalActor:SpawnAttachInFixedAreaEx("14036003", "TRPGGameBadge_Furina", 10000089, nil, nil, nil, datas.SpecialSceneList, true)
    globalActor:SpawnAttachInFixedAreaEx("14036004", "TRPGGameBadge_Navia", 10000091, nil, nil, nil, datas.SpecialSceneList, true)
    globalActor:SpawnAttachInFixedAreaEx("14036005", "TRPGGameBadge_Liney", 10000084, nil, nil, nil, datas.SpecialSceneList, true)
    actorMgr:CreateActorWithPos("Q1403605Trigger", "Actor/Gadget/Q1403605Trigger", 70900002, 0, points.Q1403605Trigger.pos, points.Q1403605Trigger.rot, true, false, 3)
end

function Quest14036:OnSubFinish1403605(arg1)
    print("OnSubFinish1403605")
    this:ActorDestroy("Q1403605Trigger")
    actorUtils.SimpleUIShowForLua(true, "General", "ART/Effect/UI/UI/Eff_UI_Clorinde_Screen_01", nil)
end

function Quest14036:OnSubFailed1403605(arg1)
    print("OnSubFailed1403605")
    actorUtils.SimpleUIShowForLua(true, "General", "ART/Effect/UI/UI/Eff_UI_Clorinde_Screen_01", nil)
    globalActor:UnSpawnAttachInFixedArea(14036001)
    globalActor:UnSpawnAttachInFixedArea(14036002)
    globalActor:UnSpawnAttachInFixedArea(14036003)
    globalActor:UnSpawnAttachInFixedArea(14036004)
    globalActor:UnSpawnAttachInFixedArea(14036005)
    this:ActorDestroy("Q1403605Trigger")
end

function Quest14036:OnSubStart1403606(arg1)
    print("OnSubStart1403606")
    actorUtils.SimpleUIShowForLua(true, "General", "ART/Effect/UI/UI/Eff_UI_Clorinde_Screen_01", nil)
    globalActor:UnSpawnAttachInFixedArea(14036001)
    globalActor:UnSpawnAttachInFixedArea(14036002)
    globalActor:UnSpawnAttachInFixedArea(14036003)
    globalActor:UnSpawnAttachInFixedArea(14036004)
    globalActor:UnSpawnAttachInFixedArea(14036005)
    if this:GetSubQuestState(1403213) == 2 then
        this:SetQuestVarByMainId(1, 2)
    else
        if this:GetSubQuestState(1403214) == 2 then
            this:SetQuestVarByMainId(1, 3)
        else
            if this:GetSubQuestState(1403215) ~= 2 then
                if this:GetSubQuestState(1403231) ~= 2 then
                    goto lbl_73
                end
            end

            this:SetQuestVarByMainId(1, 4)
            goto lbl_138
            ::lbl_73::
            if this:GetSubQuestState(1403216) ~= 2 then
                if this:GetSubQuestState(1403217) ~= 2 then
                    if this:GetSubQuestState(1403229) ~= 2 then
                        if this:GetSubQuestState(1403230) ~= 2 then
                            if this:GetSubQuestState(1403232) ~= 2 then
                                if this:GetSubQuestState(1403233) ~= 2 then
                                    if this:GetSubQuestState(1403234) ~= 2 then
                                        goto lbl_121
                                    end
                                end
                            end
                        end
                    end
                end
            end

            this:SetQuestVarByMainId(1, 5)
            goto lbl_138
            ::lbl_121::
            if this:GetSubQuestState(1403218) == 2 then
                this:SetQuestVarByMainId(1, 6)
            else
                this:SetQuestVarByMainId(1, 1)
            end
        end
    end

    ::lbl_138::
end

function Quest14036:OnSubFinish1403606(arg1)
    print("OnSubFinish1403606")
    this:PlayerEnterDungeonWithData(1266, 1205, 1403606, this:GetQuestVar(1403606, 1), datas.PlayerEnterDungeonData14032, nil, nil)
end

function Quest14036:OnSubStart1403611(arg1)
    print("OnSubStart1403611")
end

function Quest14036:OnSubFinish1403611(arg1)
    print("OnSubFinish1403611")
end

function Quest14036:OnSubStart1403607(arg1)
    print("OnSubStart1403607")
    actorMgr:CreateActorWithPos("Q140360720225Trigger", "Actor/Gadget/Q140360720225Trigger", 70900002, 0, points.Q140360720225Trigger.pos, points.Q140360720225Trigger.rot, true, false, 20225)
end

function Quest14036:OnSubFinish1403607(arg1)
    print("OnSubFinish1403607")
end

function Quest14036:OnSubStart1403608(arg1)
    print("OnSubStart1403608")
    actorUtils.SimpleUIShowForLua(false, "General", "ART/Effect/UI/UI/Eff_UI_Clorinde_Screen_01", nil)
    actorMgr:CreateActorWithPos("Q1403608Trigger", "Actor/Gadget/Q1403608Trigger", 70900002, 0, points.Q1403608Trigger.pos, points.Q1403608Trigger.rot, true, false, 1093)
end

function Quest14036:OnSubFinish1403608(arg1)
    print("OnSubFinish1403608")
    this:ActorDestroy("Q1403608Trigger")
    actorUtils.SimpleUIShowForLua(true, "General", "ART/Effect/UI/UI/Eff_UI_Clorinde_Screen_01", nil)
end

function Quest14036:OnSubFailed1403608(arg1)
    print("OnSubFailed1403608")
    actorUtils.SimpleUIShowForLua(true, "General", "ART/Effect/UI/UI/Eff_UI_Clorinde_Screen_01", nil)
    this:ActorDestroy("Q1403608Trigger")
end

function Quest14036:OnSubStart1403609(arg1)
    print("OnSubStart1403609")
end

function Quest14036:OnSubFinish1403609(arg1)
    print("OnSubFinish1403609")
end

function Quest14036:OnSubFailed1403609(arg1)
    print("OnSubFailed1403609")
    this:PlayerEnterDungeonWithData(2, 1211, 1403609, 1, datas.PlayerEnterDungeonData14032, nil, nil)
end

return Quest14036
